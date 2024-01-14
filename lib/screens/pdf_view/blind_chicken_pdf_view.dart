import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BlindChickenPdfViewScreen extends StatefulWidget {
  const BlindChickenPdfViewScreen({super.key, required this.url});

  final String url;

  @override
  State<BlindChickenPdfViewScreen> createState() => _BlindChickenPdfViewScreenState();
}

class _BlindChickenPdfViewScreenState extends State<BlindChickenPdfViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: SfPdfViewerTheme(
        data: SfPdfViewerThemeData(
          progressBarColor: BlindChickenColors.activeBorderTextField,
        ),
        child: SfPdfViewer.network(
          widget.url,
        ),
      ),
    );
  }
}
