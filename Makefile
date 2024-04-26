SHELL := /bin/zsh
.SHELLFLAGS := -c

UNITY_APP_NAME=flutter_unity_blueprints_unity

.PHONY: build-runner watch gen unity xcode update-icon

setup:
	flutter channel stable
	flutter upgrade
	flutter pub get
	cd ios && pod install
	cd unity/$(UNITY_APP_NAME) && make setup

build-runner:
	fvm dart run build_runner build --delete-conflicting-outputs

watch:
	fvm dart run build_runner watch --delete-conflicting-outputs

gen:
	rm -rf unity/$(UNITY_APP_NAME)/Assets/Scripts/Generated
	rm -rf lib/gen/proto
	mkdir -p unity/$(UNITY_APP_NAME)/Assets/Scripts/Generated
	mkdir -p lib/gen/proto
	protoc -I=proto \
		--csharp_out=unity/$(UNITY_APP_NAME)/Assets/Scripts/Generated \
		./proto/**/*.proto \
 		google/protobuf/empty.proto \
 		google/protobuf/timestamp.proto
	protoc -I=proto \
		--dart_out=lib/gen/proto \
 		./proto/**/*.proto \
 		google/protobuf/empty.proto \
 		google/protobuf/timestamp.proto

unity:
	$(UNITY_EXE) \
		-projectPath "./unity/$(UNITY_APP_NAME)" &

xcode:
	open ./ios/Runner.xcworkspace &

update-icon:
	flutter pub run flutter_launcher_icons:main
