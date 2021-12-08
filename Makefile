UNITY_VERSION=2021.2.3f1
UNITY_EXE=~/Unity/$(UNITY_VERSION)/Unity.app/Contents/MacOS/Unity
UNITY_APP_NAME=flutter_unity_blueprints_unity
BUILD_CONFIG=Debug-Development

.PHONY: setup
setup:
	flutter channel stable
	flutter upgrade
	flutter pub get
	cd ios && pod install
	make import-protobuf

.PHONY: import-protobuf
import_protobuf:
	./scripts/import_protobuf.sh $(UNITY_APP_NAME)

.PHONY: build-runner
build-runner:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: protoc
protoc:
	rm -f unity/$(UNITY_APP_NAME)/Assets/Scripts/Generated/*.cs*
	rm -f lib/gen/protos/*.dart
	protoc -I=protos \
		--csharp_out=unity/$(UNITY_APP_NAME)/Assets/Scripts/Generated \
		./protos/**/*.proto
	protoc -I=protos \
		--dart_out=lib/gen/protos \
 		./protos/**/*.proto ./protos/google/protobuf/*.proto

.PHONY: android-unity-transmogrify
android-unity-transmogrify:
	flutter pub run flutter_unity:unity_export_transmogrify

.PHONY: build-unity-ios
build_unity_ios:
	${Unity} -quit -batchmode -executeMethod FlutterUnityPlugin.Editor.Build.BuildIOSForRelease

.PHONY: build-unity-android
build_unity_android:
	${Unity} -quit -batchmode -executeMethod FlutterUnityPlugin.Editor.Build.BuildAndroid

.PHONY: build-framework
build-framework:
	cd ios/UnityProject; \
	xcodebuild -project Unity-iPhone.xcodeproj \
		-target UnityFramework \
		-configuration $(BUILD_CONFIG)

.PHONY: unity
unity:
	$(UNITY_EXE) \
		-projectPath "./unity/$(UNITY_APP_NAME)" &

.PHONY: xcode
xcode:
	open ./ios/Runner.xcworkspace &

.PHONY: update-icon
update-icon:
	flutter pub run flutter_launcher_icons:main