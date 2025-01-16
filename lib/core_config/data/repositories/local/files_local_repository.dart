import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class FilesLocalRepository {
  Future<String> get _photosDirectoryPath async => '${(await getApplicationDocumentsDirectory()).path}/photos';

  Future<String?> savePhoto(Uint8List bytes, int appointmentId) async {
    String? path;
    try {
      Directory directory = Directory('${await _photosDirectoryPath}/$appointmentId');
      if (!(await directory.exists())) {
        directory.create(recursive: true);
      }
      path = '${directory.path}/${DateTime.now().toIso8601String()}';
      File photoFile = File(path);
      await photoFile.writeAsBytes(bytes);
    } catch (_) {}

    return path;
  }
}
