using System.IO;
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEditor.iOS.Xcode;

namespace Sample.Editor
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
            var targetGuid = project.GetUnityFrameworkTargetGuid();
        
            // libz.tbd for grpc ios build
            project.AddFrameworkToProject(targetGuid, "libz.tbd", false);

            // libgrpc_csharp_ext missing bitcode. as BITCODE exand binary size to 250MB.
            project.SetBuildProperty(targetGuid, "ENABLE_BITCODE", "NO");

            File.WriteAllText(projectPath, project.WriteToString());
        }
    }
}