import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BlindChickenQrCode extends StatelessWidget {
  const BlindChickenQrCode({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: data,
      version: QrVersions.auto,
    );
  }
}
