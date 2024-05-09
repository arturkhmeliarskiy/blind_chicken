import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class FileService {
  Future<bool> saveFile({
    required String fileName,
    required Uint8List bytes,
  }) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();

    if (statuses[Permission.storage]!.isGranted) {
      Directory directory = Platform.isAndroid
          ? await getExternalStorageDirectory() ?? Directory('') //FOR ANDROID
          : await getApplicationDocumentsDirectory(); //FOR iOS

      if (directory.path.isNotEmpty) {
        String savePath = "${directory.path}/$fileName";
        log(savePath);
        await File(savePath).writeAsBytes(bytes);
        return true;
      } else {
        return false;
      }
    } else {
      log("No permission to read and write.");
      return false;
    }
  }
}
