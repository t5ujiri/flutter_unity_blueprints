.PHONY:
setup:
	flutter channel beta
	flutter pub get
	cd ios && pod install

.PHONY:
pod:
	flutter pub get
	cd ios && pod install

.PHONY:
run:
	flutter pub get
	cd ios && pod install
	flutter build ios --release
