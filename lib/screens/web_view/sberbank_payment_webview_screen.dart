import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class SberbankPaymentWebViewScreen extends StatefulWidget {
  const SberbankPaymentWebViewScreen({super.key});

  @override
  State<SberbankPaymentWebViewScreen> createState() => _SberbankPaymentWebViewScreenState();
}

class _SberbankPaymentWebViewScreenState extends State<SberbankPaymentWebViewScreen> {
  WebViewController controller = WebViewController();

  @override
  void initState() {
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://securecardpayment.ru/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse(
          'https://securecardpayment.ru/sc/',
        ),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
