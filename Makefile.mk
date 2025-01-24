gen_icons:
	flutter packages pub run flutter_launcher_icons:main

change_app_package_name:
	flutter pub run change_app_package_name:main ru.pimmer.app

run_build_runner:
	flutter pub run build_runner build --delete-conflicting-outputs
	flutter pub get


update_pubspec_yaml:
	flutter pub upgrade --major-versions

create_apk_file:
	flutter build apk --release
	./post_build.sh

create_ios_file:
	flutter build ipa --release
	./post_build.sh