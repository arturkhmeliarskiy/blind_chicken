import 'package:blind_chicken/core_config/utils/file_type_identifier/file_type_enums.dart';
import 'package:mime/mime.dart';

class FileTypeIdentifier {
  static lookupFileType(String path) {
    final mimeType = lookupMimeType(path);
    return mimeType;
  }

  ///Return FileType.unknown if the file type is not defined
  ///
  ///Values FileType: photo, video, document
  static FileType detectFileType(String path) {
    if (isPhoto(path)) {
      return FileType.photo;
    }
    if (isVideo(path)) {
      return FileType.video;
    }
    if (isDocument(path)) {
      return FileType.document;
    }

    return FileType.unknown;
  }

  static bool isPhoto(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType?.startsWith('image/') ?? false; //image/jpeg
  }

  static bool isVideo(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType?.startsWith('video/') ?? false; //video/mp4
  }

  static bool isDocument(String path) {
    final mimeType = lookupMimeType(path);

    return mimeType == 'application/msword';
  }
}
