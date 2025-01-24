#!/bin/bash
# Get the current date and time
current_date=$(date +"%d.%m.%Y")

# Retrieve the version from pubspec.yaml
version=$(grep -o 'version: .*' pubspec.yaml | sed 's/version: //')

# Remove quotes from the version
version=$(echo $version | tr -d "'\"")

# Rename APK file (Android) release
apk_new_filename="blind_chicken_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.apk"
mv build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/$apk_new_filename

# Rename APK file (Android) dev
apk_new_filename="DEV_blind_chicken_v2_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.apk"
mv build/app/outputs/flutter-apk/app-debug.apk build/app/outputs/flutter-apk/$apk_new_filename

# Rename IPA file (iOS)
ipa_new_filename="blind_chicken_v2_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.ipa"
mv build/ios/iphoneos/Runner.ipa build/ios/iphoneos/$ipa_new_filename

# Rename App Bundle file (Android)
aab_new_filename="blind_chicken_v2_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.aab"
mv build/app/outputs/bundle/release/app-release.aab build/app/outputs/bundle/release/$aab_new_filename
