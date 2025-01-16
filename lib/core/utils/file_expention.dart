import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pimmer_app/app/presentation/screens/navigation/tabs/goods/inner_screens/old_goods/models/media_item.dart';

import '../../app/presentation/screens/navigation/tabs/goods/inner_screens/old_goods/models/media_item_type.dart';

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

  Future<MediaItem?> toMediaItem({
    required bool main,
    required int sort,
    bool imageToBase64 = true,
  }) async =>
      MediaItem(
        url: imageToBase64 == true ? toBase64() : path,
        main: main,
        type: MediaType.image,
        sort: sort,
        id: '',
      );
}
