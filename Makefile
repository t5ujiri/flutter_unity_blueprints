Unity=~/Unity/2020.3.14f1/Unity.app/Contents/MacOS/Unity

.PHONY: setup
setup:
	flutter channel stable
	flutter upgrade
	flutter pub get
	cd ios && pod install

.PHONY: import_grpc_unity_plugins
import_grpc_unity_plugins:
	./scripts/import_unity_grpc_libraries.sh

.PHONY: freezed
freezed:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: protoc
protoc:
	rm -f unity/flutter_unity_blueprints_unity/Assets/Scripts/Generated/*.cs*
	rm -f lib/gen/protos/*.dart
	protoc -I=protos \
		--csharp_out=unity/flutter_unity_blueprints_unity/Assets/Scripts/Generated \
		./protos/*.proto
	protoc -I=protos \
		--dart_out=lib/gen/protos \
 		./protos/*.proto ./protos/google/protobuf/*.proto

.PHONY: android-unity-transmogrify
android-unity-transmogrify:
	flutter pub run flutter_unity:unity_export_transmogrify

.PHONY: build_unity_ios
build_unity_ios:
	${Unity} -quit -batchmode -executeMethod FlutterUnityPlugin.Editor.Build.BuildIOSForRelease

.PHONY: build_unity_android
build_unity_android:
	${Unity} -quit -batchmode -executeMethod FlutterUnityPlugin.Editor.Build.BuildAndroid
