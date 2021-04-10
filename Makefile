.PHONY: setup
setup:
	flutter channel stable
	flutter upgrade
	flutter pub get
	cd ios && pod install

.PHONY: import_grpc_unity_plugins
import_grpc_unity_plugins:
	./script/import_unity_grpc_libraries.sh

.PHONY: freezed
freezed:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: protoc
protoc:
	rm -f unity/flutter_unity_blueprints_unity/Assets/Scripts/Generated/*.cs*
	rm -f lib/gen/protos/*.dart
	protoc -I=protos \
		--grpc_out=unity/flutter_unity_blueprints_unity/Assets/Scripts/Generated \
		--csharp_out=unity/flutter_unity_blueprints_unity/Assets/Scripts/Generated \
		--plugin=protoc-gen-grpc=$${HOME}/Grpc.Tools/tools/macosx_x64/grpc_csharp_plugin \
		./protos/*.proto
	protoc -I=protos --dart_out=grpc:lib/gen/protos \
 		./protos/*.proto ./protos/google/protobuf/*.proto

.PHONY: build-ios
build-ios:
	flutter pub get
	cd ios && pod install
	flutter build ios --release

.PHONY: android-unity-transmogrify
android-unity-transmogrify:
	flutter pub run flutter_unity:unity_export_transmogrify

.PHONY:
build-android:
	flutter pub get
	flutter pub run flutter_unity:unity_export_transmogrify
	flutter build android --release
