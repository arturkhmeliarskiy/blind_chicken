import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class SberbankPaymentWebViewScreen extends StatefulWidget {
  const SberbankPaymentWebViewScreen({
    super.key,
    required this.url,
  });

  final String url;

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
          onPageStarted: (String url) {
            if (url.contains('orders')) {
              var uri = Uri.dataFromString(url);
              final orderId = uri.queryParameters['id'] ?? '';
              context.navigateTo(
                PaymentVerificationRoute(orderId: orderId),
              );
            }
            log(url);
          },
          onPageFinished: (String url) {
            log(url);
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse(
          widget.url,
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
