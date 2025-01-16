import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';

extension FileExtention on File {
  String toBase64() => UriData.fromBytes(
        readAsBytesSync(),
        mimeType: lookupMimeType(path) ?? 'application/octet-stream',
      ).toString();

  static Future<File> fromBase64(String base64String) async {
    final data = UriData.parse(base64String);
    final bytes = data.contentAsBytes();

    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpeg');

    return file.writeAsBytes(bytes);
  }
}
