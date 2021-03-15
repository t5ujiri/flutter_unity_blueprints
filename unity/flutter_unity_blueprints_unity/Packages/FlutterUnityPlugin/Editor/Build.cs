using System;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.Build.Reporting;
using UnityEngine;

namespace FlutterUnityPlugin.Editor
{
    public class Build : UnityEditor.Editor
    {
        private static readonly string ProjectPath = Path.GetFullPath(Path.Combine(Application.dataPath, ".."));

        private static readonly string IOSExportPath =
            Path.GetFullPath(Path.Combine(ProjectPath, "../../ios/UnityProject"));

        private static readonly string AndroidExportPath =
            Path.GetFullPath(Path.Combine(ProjectPath, "../../android/unityExport"));

        [MenuItem("Build/Export iOS", false, 1)]
        public static void BuildIOSForRelease()
        {
            if (Directory.Exists(IOSExportPath))
            {
                Directory.Delete(IOSExportPath, true);
            }

            PlayerSettings.iOS.sdkVersion = iOSSdkVersion.DeviceSDK;
            EditorUserBuildSettings.iOSBuildConfigType = iOSBuildType.Release;

            var report = BuildPipeline.BuildPlayer(
                GetEnabledScenes(), IOSExportPath, BuildTarget.iOS, BuildOptions.None);

            if (report.summary.result != BuildResult.Succeeded)
            {
                throw new Exception(report.summary.result.ToString());
            }

            Debug.Log($"IOS Build Succeeded. output path: {report.summary.outputPath}¥n" +
                      $"Build time: {report.summary.totalTime.Seconds} seconds");
        }

        [MenuItem("Build/Export Android", false, 2)]
        public static void BuildAndroid()
        {
            if (Directory.Exists(AndroidExportPath))
            {
                Directory.Delete(AndroidExportPath, true);
            }

            EditorUserBuildSettings.exportAsGoogleAndroidProject = true;

            var report = BuildPipeline.BuildPlayer(
                GetEnabledScenes(), AndroidExportPath, BuildTarget.Android, BuildOptions.None);

            if (report.summary.result != BuildResult.Succeeded)
            {
                throw new Exception(report.summary.result.ToString());
            }

            Debug.Log($"Android Build Succeeded. output path: {report.summary.outputPath}¥n" +
                      $"Build time: {report.summary.totalTime.Seconds} seconds");
        }

        private static string[] GetEnabledScenes()
        {
            return EditorBuildSettings.scenes.Where(s => s.enabled).Select(s => s.path).ToArray();
        }
    }
}