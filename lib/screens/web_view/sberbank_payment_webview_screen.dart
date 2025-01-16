import 'package:blind_chicken/core_config/utils/logging.dart';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';
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
            logging(url, stackTrace: StackTrace.current);
          },
          onPageFinished: (String url) {
            logging(url, stackTrace: StackTrace.current);
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
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const AppBarBlindChicken(),
              Expanded(
                child: WebViewWidget(
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
