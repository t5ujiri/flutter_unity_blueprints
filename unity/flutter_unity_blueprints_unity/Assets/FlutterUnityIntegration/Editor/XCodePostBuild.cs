/*
MIT License
Copyright (c) 2021 REX ISAAC RAPHAEL
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#if UNITY_IOS
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using UnityEditor;
using UnityEditor.iOS.Xcode;
using UnityEngine;
using Random = System.Random;

namespace FlutterUnityIntegration.Editor
{
    /// <summary>
    /// Adding this post build script to Unity project enables the flutter-unity-widget to access it
    /// </summary>
    public static class XcodePostBuild
    {
        /// <summary>
        /// The identifier added to touched file to avoid double edits when building to existing directory without
        /// replace existing content.
        /// </summary>
        private const string TouchedMarker = "https://github.com/juicycleff/flutter-unity-view-widget";


        #region flutter-unity-view-widget/issues/625

        private static readonly string ProjectPath = Path.GetFullPath(Path.Combine(Application.dataPath, ".."));

        private static readonly string IOSExportPath =
            Path.GetFullPath(Path.Combine(ProjectPath, "../../ios/UnityLibrary"));

        private static readonly string FlutterIOSPath = Path.GetFullPath(Path.Combine(ProjectPath, "../../ios"));

        private static readonly Random Random = new();

        private static string GenerateXCodeId()
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, 24)
                .Select(s => s[Random.Next(s.Length)]).ToArray());
        }

        private static string[] GetFlutterRunnerFlavors()
        {
            /// Read existing flavors from iOS Flutter Project (except Runner Flavor itself)
            string[] flutterFlavors = Directory
                .GetFiles($"{FlutterIOSPath}/Runner.xcodeproj/xcshareddata/xcschemes", "*.xcscheme")
                .Where(s => !s.Contains("Runner.xcscheme")).ToArray();

            /// If no flavors exists for this App skip flavor generation
            if (flutterFlavors.Length == 0) return null;

            // print all flavors
            foreach (var fl in flutterFlavors)
            {
                Debug.Log(fl);
            }

            var flavorNames = new string[flutterFlavors.Length];
            for (var i = 0; i < flutterFlavors.Length; i++)
            {
                flavorNames[i] = Path.GetFileName(flutterFlavors[i]).Split(".")[0];
            }

            return flavorNames;
        }

        private static void AddXCodeFlavorToPBX(string targetPattern, string[] flavors, ref string pbxprojText)
        {
            /// Get Full Configuration for nth buildConfiguration
            var pbxProjectFullBuildConfiguration = pbxprojText
                .Substring(pbxprojText.IndexOf("/* Begin XCBuildConfiguration section */"))
                .GetUntilOrEmpty("/* End XCBuildConfiguration section */");
            var newpbxProjectFullBuildConfiguration = pbxProjectFullBuildConfiguration;

            /// Get buildConfigurations section from Unity-Project
            var indexOfPBXProjectBuildConfigurationOfUnityIPhone =
                pbxprojText.IndexOf("/* Build configuration list for " + targetPattern + " */ = {");
            var configurationsFromUnityProject = pbxprojText.Substring(indexOfPBXProjectBuildConfigurationOfUnityIPhone)
                .GetUntilOrEmpty("};");
            var buildConfigurations = configurationsFromUnityProject
                .Substring(configurationsFromUnityProject.IndexOf("buildConfigurations = (")).GetUntilOrEmpty(");")
                .Replace("buildConfigurations = (", "");
            var buildConfigurationItems = buildConfigurations[1..].Split(",")
                .Where(s => !s.Contains("ReleaseForProfiling") && !s.Contains("ReleaseForRunning")).ToArray();

            var newbuildConfigurations = buildConfigurations;
            foreach (var configuration in buildConfigurationItems)
            {
                if (!configuration.Contains("/* ") || !configuration.Contains(" */")) continue;
                var configName = configuration.GetUntilOrEmpty(" */").Split(" ").Last();
                foreach (var fl in flavors)
                {
                    var newXCodeId = GenerateXCodeId();
                    var oldId = configuration.Split(" ").First().Trim();
                    var newName = configuration.Replace($"{configName}", $"{configName}-{fl}")
                        .Replace(oldId, newXCodeId);
                    newbuildConfigurations += $"{newName},\n";

                    var index = pbxProjectFullBuildConfiguration.IndexOf(oldId + " " + $"/* {configName} */");
                    var sameConfig = pbxProjectFullBuildConfiguration
                        .Substring(index)
                        .GetUntilOrEmpty($"name = {configName};");

                    string newstr = newXCodeId + " " + $"/* {configName}-{fl} */ = " + "{";
                    var firstLine = sameConfig.Split(new[] { '\r', '\n' }).FirstOrDefault();
                    sameConfig = sameConfig.Replace(firstLine, newstr);
                    sameConfig += $"name = {configName}-{fl};\n" + "};\n";

                    newpbxProjectFullBuildConfiguration += sameConfig;
                }
            }

            newbuildConfigurations = newbuildConfigurations.Replace("\n\n", "\n");

            /// new configurations into Unity XCode Project
            var newconfigurationsFromUnityProject =
                configurationsFromUnityProject.Replace(buildConfigurations, newbuildConfigurations);
            pbxprojText = pbxprojText.Replace(configurationsFromUnityProject, newconfigurationsFromUnityProject);
            pbxprojText = pbxprojText.Replace(pbxProjectFullBuildConfiguration, newpbxProjectFullBuildConfiguration);
        }

        private static void ModifyXCodeBuild()
        {
            Debug.Log("Syncing XCode Project with Flutter flavors...");

            var pbxprojFile = Path.Combine(IOSExportPath, "Unity-iPhone.xcodeproj/project.pbxproj");
            var pbxprojText = File.ReadAllText(pbxprojFile);

            var flutterFlavorNames = GetFlutterRunnerFlavors();
            if (flutterFlavorNames == null)
            {
                Debug.Log("No Flutter Flavors found. Skipping XCode Project Sync...");
                return;
            }

            AddXCodeFlavorToPBX("PBXProject \"Unity-iPhone\"", flutterFlavorNames, ref pbxprojText);
            AddXCodeFlavorToPBX("PBXNativeTarget \"UnityFramework\"", flutterFlavorNames, ref pbxprojText);
            AddXCodeFlavorToPBX("PBXNativeTarget \"Unity-iPhone\"", flutterFlavorNames, ref pbxprojText);
            AddXCodeFlavorToPBX("PBXNativeTarget \"Unity-iPhone Tests\"", flutterFlavorNames, ref pbxprojText);

            File.WriteAllText(pbxprojFile, pbxprojText);
        }

        #endregion

        //trigger this manually from build.cs as [PostProcessBuild] or IPostprocessBuildWithReport don't always seem to trigger.
        public static void PostBuild(BuildTarget target, string pathToBuiltProject)
        {
            if (target != BuildTarget.iOS)
            {
                return;
            }

            PatchUnityNativeCode(pathToBuiltProject);

            UpdateUnityProjectFiles(pathToBuiltProject);

            UpdateBuildSettings(pathToBuiltProject);

            ModifyXCodeBuild();
        }

        /// <summary>
        /// We need to set particular build settings on the UnityFramework target.
        /// This includes:
        ///   - skip_install = NO (It is YES by default)
        /// </summary>
        /// <param name="pathToBuildProject"></param>
        private static void UpdateBuildSettings(string pathToBuildProject)
        {
            var pbx = new PBXProject();
            var pbxPath = Path.Combine(pathToBuildProject, "Unity-iPhone.xcodeproj/project.pbxproj");
            pbx.ReadFromFile(pbxPath);

            var targetGuid = pbx.GetUnityFrameworkTargetGuid();
            var projGuid = pbx.ProjectGuid();

            // TODO: Rex optional set this value
            // Set skip_install to NO
            pbx.SetBuildProperty(targetGuid, "SKIP_INSTALL", "YES");

            // Set some linker flags
            pbx.SetBuildProperty(projGuid, "ENABLE_BITCODE", "NO");

            // Persist changes
            pbx.WriteToFile(pbxPath);
        }

        /// <summary>
        /// We need to add the Data folder to the UnityFramework framework
        /// </summary>
        private static void UpdateUnityProjectFiles(string pathToBuiltProject)
        {
            var pbx = new PBXProject();
            var pbxPath = Path.Combine(pathToBuiltProject, "Unity-iPhone.xcodeproj/project.pbxproj");
            pbx.ReadFromFile(pbxPath);

            // PatchRemoveTargetMembership(pathToBuiltProject);
            // Add unityLibrary/Data
            var targetGuid = pbx.TargetGuidByName("UnityFramework");
            var fileGuid = pbx.AddFolderReference(Path.Combine(pathToBuiltProject, "Data"), "Data");
            pbx.AddFileToBuild(targetGuid, fileGuid);

            pbx.WriteToFile(pbxPath);
        }

        /// <summary>
        /// Make necessary changes to Unity build output that enables it to be embedded into existing Xcode project.
        /// </summary>
        private static void PatchUnityNativeCode(string pathToBuiltProject)
        {
            if (!CheckUnityAppController(Path.Combine(pathToBuiltProject, "Classes/UnityAppController.h")))
            {
                EditUnityAppControllerH(Path.Combine(pathToBuiltProject, "Classes/UnityAppController.h"));
                MarkUnityAppControllerH(Path.Combine(pathToBuiltProject, "Classes/UnityAppController.h"));
            }

            if (!CheckUnityAppController(Path.Combine(pathToBuiltProject, "Classes/UnityAppController.mm")))
            {
                EditUnityAppControllerMM(Path.Combine(pathToBuiltProject, "Classes/UnityAppController.mm"));
                MarkUnityAppControllerMM(Path.Combine(pathToBuiltProject, "Classes/UnityAppController.mm"));
            }
        }

        private static bool MarkUnityAppControllerH(string path)
        {
            var inScope = false;
            var mark = false;
            EditCodeFile(path, line =>
            {
                inScope |= line.Contains("include \"RenderPluginDelegate.h\"");
                if (inScope)
                {
                    if (line.Trim() == "")
                    {
                        inScope = false;

                        return new string[]
                        {
                            "",
                            "// Edited by " + TouchedMarker,
                            "",
                        };
                    }

                    return new string[] { line };
                }

                return new string[] { line };
            });
            return mark;
        }

        private static bool MarkUnityAppControllerMM(string path)
        {
            var inScope = false;
            var mark = false;
            EditCodeFile(path, line =>
            {
                inScope |= line.Contains("#include <sys/sysctl.h>");
                if (inScope)
                {
                    if (line.Trim() == "")
                    {
                        inScope = false;

                        return new string[]
                        {
                            "",
                            "// Edited by " + TouchedMarker,
                            "",
                        };
                    }

                    return new string[] { line };
                }

                return new string[] { line };
            });
            return mark;
        }

        private static bool CheckUnityAppController(string path)
        {
            var mark = false;
            EditCodeFile(path, line =>
            {
                mark |= line.Contains("// Edited by " + TouchedMarker);
                return new string[] { line };
            });
            return mark;
        }

        /// <summary>
        /// Edit 'UnityAppController.h': returns 'UnityAppController' from 'AppDelegate' class.
        /// </summary>
        private static void EditUnityAppControllerH(string path)
        {
            var inScope = false;
            var markerDetected = false;

            // Modify inline GetAppController
            EditCodeFile(path, line =>
            {
                inScope |= line.Contains("include \"RenderPluginDelegate.h\"");

                if (inScope && !markerDetected)
                {
                    if (line.Trim() == "")
                    {
                        inScope = false;
                        markerDetected = true;

                        return new string[]
                        {
                            "",
                            "// Added by " + TouchedMarker,
                            "@protocol UnityEventListener <NSObject>",
                            "- (void)onSceneLoaded:(NSString *)name buildIndex:(NSInteger *)bIndex loaded:(bool *)isLoaded valid:(bool *)IsValid;",
                            "- (void)onMessage:(NSString *)message;",
                            "@end",
                            "",
                        };
                    }

                    return new string[] { line };
                }

                return new string[] { line };
            });

            inScope = false;
            markerDetected = false;

            // Modify inline GetAppController
            EditCodeFile(path, line =>
            {
                inScope |= line.Contains("include \"RenderPluginDelegate.h\"");

                if (inScope && !markerDetected)
                {
                    if (line.Trim() == "")
                    {
                        inScope = false;
                        markerDetected = true;

                        return new string[]
                        {
                            "",
                            "// Added by " + TouchedMarker,
                            "typedef void(^unitySceneLoadedCallbackType)(const char* name, const int* buildIndex, const bool* isLoaded, const bool* IsValid);",
                            "",
                            "typedef void(^unityMessageCallbackType)(const char* message);",
                            "",
                        };
                    }

                    return new string[] { line };
                }

                return new string[] { line };
            });

            inScope = false;
            markerDetected = false;

            // Modify inline GetAppController
            EditCodeFile(path, line =>
            {
                inScope |= line.Contains("quitHandler)");

                if (inScope && !markerDetected)
                {
                    if (line.Trim() == "")
                    {
                        inScope = false;
                        markerDetected = true;

                        return new string[]
                        {
                            "@property (nonatomic, copy)                                 void(^unitySceneLoadedHandler)(const char* name, const int* buildIndex, const bool* isLoaded, const bool* IsValid);",
                            "@property (nonatomic, copy)                                 void(^unityMessageHandler)(const char* message);",
                        };
                    }

                    return new string[] { line };
                }

                return new string[] { line };
            });
        }

        /// <summary>
        /// Edit 'UnityAppController.mm': triggers 'UnityReady' notification after Unity is actually started.
        /// </summary>
        private static void EditUnityAppControllerMM(string path)
        {
            var inScope = false;
            var markerDetected = false;

            EditCodeFile(path, line =>
            {
                if (line.Trim() == "@end")
                {
                    return new string[]
                    {
                        "",
                        "// Added by " + TouchedMarker,
                        "extern \"C\" void OnUnityMessage(const char* message)",
                        "{",
                        "    if (GetAppController().unityMessageHandler) {",
                        "        GetAppController().unityMessageHandler(message);",
                        "    }",
                        "}",
                        "",
                        "extern \"C\" void OnUnitySceneLoaded(const char* name, const int* buildIndex, const bool* isLoaded, const bool* IsValid)",
                        "{",
                        "    if (GetAppController().unitySceneLoadedHandler) {",
                        "        GetAppController().unitySceneLoadedHandler(name, buildIndex, isLoaded, IsValid);",
                        "    }",
                        "}",
                        "",
                        line,
                    };
                }

                inScope |= line.Contains("- (void)startUnity:");
                markerDetected |= inScope && line.Contains(TouchedMarker);

                //Find the end of the startUnity function, a } without any indentation.  (regex: starts with } followed by any whitespace)
                //Avoid indentation before } as newer unity versions include an if-statement inside this function.
                if (inScope && Regex.Match(line, @"^}(\s)*$").Success)
                {
                    inScope = false;

                    if (markerDetected)
                    {
                        return new string[] { line };
                    }
                    else
                    {
                        //Add a UnityReady notification at the end of the startUnity function.
                        return new string[]
                        {
                            "    // Modified by " + TouchedMarker,
                            @"    [[NSNotificationCenter defaultCenter] postNotificationName: @""UnityReady"" object:self];",
                            "}",
                        };
                    }
                }

                return new string[] { line };
            });
        }


        private static void EditCodeFile(string path, Func<string, IEnumerable<string>> lineHandler)
        {
            var bakPath = path + ".bak";
            if (File.Exists(bakPath))
            {
                File.Delete(bakPath);
            }

            File.Move(path, bakPath);

            using (var reader = File.OpenText(bakPath))
            using (var stream = File.Create(path))
            using (var writer = new StreamWriter(stream))
            {
                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    var outputs = lineHandler(line);
                    foreach (var o in outputs)
                    {
                        writer.WriteLine(o);
                    }
                }
            }
        }
    }
}

#endif