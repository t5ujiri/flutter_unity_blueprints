UNITY_VERSION=2022.3.53f1
UNITY_EXE=~/Unity/$(UNITY_VERSION)/Unity.app/Contents/MacOS/Unity

setup:
	dotnet new tool-manifest || true
	dotnet tool install NuGetForUnity.Cli || true
	dotnet nugetforunity restore .

unity:
	$(UNITY_EXE) \
		-projectPath "." &

build-unity-ios:
	$(UNITY_EXE) -quit -batchmode \
		-projectPath . \
		-executeMethod FlutterUnityIntegration.Editor.Build.DoBuildIOSRelease \
		-logFile /dev/stdout \
		-buildTarget iOS;

build-unity-ios-debug:
	$(UNITY_EXE) -quit -batchmode \
		-projectPath . \
		-executeMethod FlutterUnityIntegration.Editor.Build.DoBuildIOSDebug \
		-logFile /dev/stdout \
		-buildTarget iOS;

build-unity-android:
	$(UNITY_EXE) -quit -batchmode \
		-projectPath . \
		-executeMethod FlutterUnityIntegration.Editor.Build.DoBuildAndroidLibraryRelease \
		-logFile /dev/stdout \
		-buildTarget Android;

build-unity-android-debug:
	$(UNITY_EXE) -quit -batchmode \
		-projectPath . \
		-executeMethod FlutterUnityIntegration.Editor.Build.DoBuildAndroidLibraryDebug \
		-logFile /dev/stdout \
		-buildTarget Android;

build-unity-web:
	$(UNITY_EXE) -quit -batchmode \
		-projectPath . \
		-executeMethod FlutterUnityIntegration.Editor.Build.DoBuildWebGL \
		-logFile /dev/stdout \
		-buildTarget WebGL;