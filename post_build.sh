#!/bin/bash

# Получение текущей даты и времени
current_date=$(date +"%d.%m.%Y")

# Получение версии из pubspec.yaml
version=$(grep '^version: [0-9]\+\.[0-9]\+\.[0-9]\+' "pubspec.yaml" | sed 's/version: \([0-9]\+\.[0-9]\+\.[0-9]\+\).*/\1/')
echo "Версия: $version"
version=$(echo $version | tr -d "'\"")

# Переименование APK файла (Android) release
apk_new_filename="blind_chicken_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.apk"
mv build/app/outputs/flutter-apk/app-release.apk build/app/outputs/flutter-apk/$apk_new_filename

# Переименование APK файла (Android) dev
apk_new_filename="DEV_blind_chicken_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.apk"
mv build/app/outputs/flutter-apk/app-debug.apk build/app/outputs/flutter-apk/$apk_new_filename

# Переименование IPA файла (iOS)
ipa_new_filename="blind_chicken_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.ipa"
mv build/ios/iphoneos/Runner.ipa build/ios/iphoneos/$ipa_new_filename

# Переименование App Bundle файла (Android)
aab_new_filename="blind_chicken_v$version"_"$FLUTTER_BUILD_NAME"_"$current_date.aab"
mv build/app/outputs/bundle/release/app-release.aab build/app/outputs/bundle/release/$aab_new_filename

folder_to_open="build/app/outputs/bundle/release/"

# Проверка операционной системы и использование соответствующей команды для открытия папки
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$folder_to_open"
  elif command -v nautilus >/dev/null 2>&1; then
    nautilus "$folder_to_open"
  elif command -v dolphin >/dev/null 2>&1; then
    dolphin "$folder_to_open"
  elif command -v thunar >/dev/null 2>&1; then
    thunar "$folder_to_open"
  else
    echo "Ни одна из команд для открытия папок не установлена. Пожалуйста, установите xdg-utils, nautilus, dolphin или thunar."
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  open "$folder_to_open"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
  explorer.exe "$(cygpath -w "$folder_to_open")"
else
  echo "Неизвестная операционная система. Скрипт поддерживает Linux, macOS и Windows."
fi

folder_to_open="build/app/outputs/flutter-apk/"

# Проверка операционной системы и использование соответствующей команды для открытия папки
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  if command -v xdg-open >/dev/null 2>&1; then
    xdg-open "$folder_to_open"
  elif command -v nautilus >/dev/null 2>&1; then
    nautilus "$folder_to_open"
  elif command -v dolphin >/dev/null 2>&1; then
    dolphin "$folder_to_open"
  elif command -v thunar >/dev/null 2>&1; then
    thunar "$folder_to_open"
  else
    echo "Ни одна из команд для открытия папок не установлена. Пожалуйста, установите xdg-utils, nautilus, dolphin или thunar."
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  open "$folder_to_open"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
  explorer.exe "$(cygpath -w "$folder_to_open")"
else
  echo "Неизвестная операционная система. Скрипт поддерживает Linux, macOS и Windows."
fi

echo "Скрипт завершен"
read -n 1 x; while read -n 1 -t .1 y; do x="$x$y"; done

