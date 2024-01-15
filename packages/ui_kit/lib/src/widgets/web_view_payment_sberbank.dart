// import 'package:flutter/widgets.dart';
// // import 'package:sberbank_acquiring/sberbank_acquiring_core.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// typedef OnFinished = void Function(String? orderId);
// typedef OnLoad = void Function(bool isLoading);
// typedef OnError = void Function();

// class WebViewPaymentSberbank extends StatefulWidget {
//   const WebViewPaymentSberbank({
//     Key? key,
//     required this.formUrl,
//     required this.returnUrl,
//     required this.finishedPay,
//     this.failUrl,
//     this.onFinished,
//     this.onLoad,
//     this.onError,
//     this.onWebViewCreated,
//   }) : super(key: key);

//   final String formUrl;
//   final String returnUrl;
//   final String? failUrl;
//   final OnFinished? onFinished;
//   final OnLoad? onLoad;
//   final OnError? onError;
//   final WebViewCreatedCallback? onWebViewCreated;
//   final Function(String) finishedPay;

//   @override
//   _WebViewPaymentSberbank createState() => _WebViewPaymentSberbank();
// }

// class _WebViewPaymentSberbank extends State<WebViewPaymentSberbank> {
//   bool hasSent = false;

//   // SberbankAcquiring acquiring = SberbankAcquiring(
//   //   SberbankAcquiringConfig.token(
//   //     token: 'er3c1eqehi0676k4th7cjlu2bf',
//   //     isDebugMode: false,
//   //   ),
//   // );

//   @override
//   Widget build(BuildContext context) {
//     final String? failUrl = widget.failUrl;

//     return WebViewWidget(
//       initialUrl: widget.formUrl,
//       gestureNavigationEnabled: true,
//       javascriptMode: JavascriptMode.unrestricted,
//       onWebViewCreated: widget.onWebViewCreated,
//       onPageStarted: (String url) {
//         // acquiring.logger.log(name: 'WebViewPayment', message: 'onPageStarted: $url');

//         if (url == widget.formUrl) {
//           widget.onLoad?.call(true);
//         }

//         if (url.contains(widget.returnUrl)) {
//           hasSent = true;
//           widget.onFinished?.call(getOrderId(url));
//         }

//         if (failUrl != null && url.contains(failUrl)) {
//           hasSent = true;
//           widget.onError?.call();
//         }
//       },
//       onPageFinished: (String url) async {
//         // acquiring.logger.log(name: 'WebViewPayment', message: 'onPageFinished: $url');

//         widget.finishedPay(url);

//         print(url.contains('slepayakurica.ru/'));

//         if (url == widget.formUrl) {
//           widget.onLoad?.call(false);
//         }

//         if (!hasSent && url.contains(widget.returnUrl)) {
//           widget.onFinished?.call(getOrderId(url));
//         }

//         if (!hasSent && (failUrl != null && url.contains(failUrl))) {
//           widget.onError?.call();
//         }
//       },
//     );
//   }

//   String? getOrderId(String url) {
//     final Uri? url0 = Uri.tryParse(url);

//     return url0?.queryParameters['orderId'];
//   }
// }
