using System.IO;
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEditor.iOS.Xcode;
using UnityEngine;

namespace FlutterUnityPlugin.Editor
{
    public class PostXCodeBuild : IPostprocessBuildWithReport
    {
        public int callbackOrder => int.MaxValue;

        public void OnPostprocessBuild(BuildReport report)
        {
            if (report.summary.platform != BuildTarget.iOS)
            {
                return;
            }

            var outputPath = report.summary.outputPath;

            EditProject(outputPath);
            EditPlist(outputPath);
        }

        private static void EditProject(string pathToBuild)
        {
            // Edit Unity-iPhone proj
            var pbx = new PBXProject();
            var pbxPath = Path.Combine(pathToBuild, "Unity-iPhone.xcodeproj/project.pbxproj");

            if (!File.Exists(pbxPath))
            {
                Debug.LogWarning($"PBX not found, skipping EditProject. Path: {pbxPath}");
                return;
            }

            pbx.ReadFromFile(pbxPath);

            var guidUnityFrameworkTarget = pbx.GetUnityFrameworkTargetGuid();
            var guidFile = pbx.AddFolderReference(Path.Combine(pathToBuild, "Data"), "Data");
            pbx.AddFileToBuild(guidUnityFrameworkTarget, guidFile);

            pbx.SetBuildProperty(guidUnityFrameworkTarget, "ENABLE_BITCODE", "NO");
            pbx.UpdateBuildProperty(guidUnityFrameworkTarget, "OTHER_LDFLAGS", new[]
            {
                "-Wl,-U,_FlutterUnityPluginOnMessage"
            }, null);

            pbx.WriteToFile(pbxPath);

            Debug.Log("Editing build settings completed");
        }

        private void EditPlist(string pathToBuild)
        {
            var plistPath = Path.GetFullPath(Path.Combine(pathToBuild, "../Runner/Info.plist"));

            if (!File.Exists(plistPath))
            {
                Debug.LogWarning($"Plist file not found, skipping EditPlist. Path: {plistPath}");
                return;
            }

            var plist = new PlistDocument();
            plist.ReadFromFile(plistPath);

            var root = plist.root;
            root.SetBoolean("io.flutter.embedded_views_preview", true);

            Debug.Log("Editing Plist completed.");
        }
    }
}