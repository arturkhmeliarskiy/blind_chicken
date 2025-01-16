import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pimmer_app/di/app_locator.dart';
import 'package:pimmer_app/localization/l10n/generated/l10n.dart';
import 'package:pimmer_app/model/error_response.dart';

class MediaItemCreator {
  static Future<({ErrorAccess? error, List<File>? files})> pickGalleryFile() async {
    try {
      ImagePicker imagePicker = Locator.injection();
      XFile? res = await imagePicker.pickImage(source: ImageSource.gallery);
      if (res == null) {
        return (files: null, error: null);
      }
      return (files: [File(res.path)], error: null);
    } on PlatformException catch (e) {
      final isAccessDenied = ['photo_access_denied'].contains(e.code);
      if (isAccessDenied) {
        return (
          files: null,
          error: ErrorAccess(
            title: AppLocalization.current.galleryAccessDenied,
            description: AppLocalization.current.galleryAccessDeniedDescription,
          )
        );
      }
    }
    return (files: null, error: null);
  }

  static Future<({ErrorAccess? error, List<File>? files})> pickMultiImage() async {
    try {
      ImagePicker imagePicker = Locator.injection();
      List<XFile> res = await imagePicker.pickMultiImage();
      List<File> files = res.map((e) => File(e.path)).toList();
      return (files: files, error: null);
    } on PlatformException catch (e) {
      final isAccessDenied = ['camera_access_denied', 'photo_access_denied'].contains(e.code);
      if (isAccessDenied) {
        return (
          files: null,
          error: ErrorAccess(
            title: AppLocalization.current.galleryAccessDenied,
            description: AppLocalization.current.galleryAccessDeniedDescription,
          )
        );
      }
    }
    return (files: null, error: null);
  }

  static Future<({ErrorAccess? error, List<File>? files})> pickCamera() async {
    try {
      ImagePicker imagePicker = Locator.injection();
      XFile? res = await imagePicker.pickImage(source: ImageSource.camera);
      if (res == null) return (files: null, error: null);
      return (files: [File(res.path)], error: null);
    } on PlatformException catch (e) {
      final isAccessDenied = ['camera_access_denied'].contains(e.code);
      if (isAccessDenied) {
        return (
          files: null,
          error: ErrorAccess(
            title: AppLocalization.current.cameraAccessDenied,
            description: AppLocalization.current.cameraAccessDeniedDescription,
          )
        );
      }
    }

    return (files: null, error: null);
  }
}
