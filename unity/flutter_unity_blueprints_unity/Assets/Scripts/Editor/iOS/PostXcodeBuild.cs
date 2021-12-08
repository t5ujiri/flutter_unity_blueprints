using System.IO;
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEditor.iOS.Xcode;
using UnityEngine;

namespace FlutterUnityBlueprints.Editor
{
    public class PostXcodeBuild : IPostprocessBuildWithReport
    {
        public int callbackOrder => int.MaxValue;

        public void OnPostprocessBuild(BuildReport report)
        {
            if (report.summary.platform != BuildTarget.iOS) return;

            var projectPath = PBXProject.GetPBXProjectPath(report.summary.outputPath);
            var project = new PBXProject();
            project.ReadFromString(File.ReadAllText(projectPath));
            var unityFrameworkTargetGuid = project.GetUnityFrameworkTargetGuid();

            // copy configurations
            var configTableGuids = AssetDatabase.FindAssets("t:BuildConfigurationPropertyTable");
            foreach (var configTableGuid in configTableGuids)
            {
                CreateConfig(project, unityFrameworkTargetGuid, configTableGuid);
            }

            // libz.tbd for grpc ios build
            project.AddFrameworkToProject(unityFrameworkTargetGuid, "libz.tbd", false);

            // libgrpc_csharp_ext missing bitcode. as BITCODE exand binary size to 250MB.
            project.SetBuildProperty(unityFrameworkTargetGuid, "ENABLE_BITCODE", "NO");

            File.WriteAllText(projectPath, project.WriteToString());
        }

        private static void CreateConfig(PBXProject project, string unityTargetGuid, string configTableGuid)
        {
            var path = AssetDatabase.GUIDToAssetPath(configTableGuid);
            var configTable =
                AssetDatabase.LoadAssetAtPath<BuildConfigurationPropertyTable>(path);

            project.AddBuildConfig(configTable.name);
            var configGuid = project.BuildConfigByName(unityTargetGuid, configTable.name);

            Debug.Assert(configTable != null, nameof(configTable) + " != null");
            if (configTable.entries == null) return;

            foreach (var entry in configTable.entries)
            {
                for (var i = 0; i < entry.values.Count; i++)
                {
                    if (i == 0)
                    {
                        project.SetBuildPropertyForConfig(configGuid, entry.key,
                            entry.values[i]);
                    }
                    else
                    {
                        project.AddBuildPropertyForConfig(configGuid, entry.key,
                            entry.values[i]);
                    }
                }
            }
        }
    }
}