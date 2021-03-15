.PHONY:
setup:
	flutter channel beta
	flutter upgrade
	flutter pub get
	cd ios && pod install

.PHONY:
build-ios:
	flutter pub get
	cd ios && pod install
	flutter build ios --release

.PHONY:
android-unity-transmogrify:
	flutter pub run flutter_unity:unity_export_transmogrify

.PHONY:
build-android:
	flutter pub get
	flutter pub run flutter_unity:unity_export_transmogrify
	flutter build android --release
