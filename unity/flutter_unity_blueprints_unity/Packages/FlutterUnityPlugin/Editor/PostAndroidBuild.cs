using System.IO;
using UnityEditor.Android;

namespace FlutterUnityPlugin.Editor
{
    public class PostAndroidBuild : IPostGenerateGradleAndroidProject
    {
        public int callbackOrder { get; }
        public void OnPostGenerateGradleAndroidProject(string path)
        {
            var gradlePath = Path.Combine(path, "build.gradle");
            var contents = File.ReadAllText(gradlePath);
            contents = contents.Replace("\nandroid {", "\nandroid {\nbuildTypes {\n    profile {}\n}");
            contents = contents.Replace("android.ndkDirectory", $"\"{AndroidExternalToolsSettings.ndkRootPath}\"");
            File.WriteAllText(gradlePath, contents);
        }
    }
}