// import 'package:flutter/material.dart';
// import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

// class SberbankPaymentService {
//   static Future<void> webviewPayment(
//     BuildContext context,
//   ) async {
//     Navigator.of(context).push(
//       MaterialPageRoute<void>(
//         builder: (BuildContext context) => Scaffold(
//           body: WebViewPaymentSberbank(
//             formUrl: 'https://securecardpayment.ru/sc/ZXCeDgRKynriYchY',
//             returnUrl: 'http://slepayakurica.ru/oplacheno',
//             failUrl: 'http://slepayakurica.ru/false',
//             onLoad: (bool v) {
//               debugPrint('WebView load: $v');
//             },
//             onError: () {
//               debugPrint('WebView Error');
//             },
//             finishedPay: (value) async {
//               if (value.contains('slepayakurica.ru/')) {}
//             },
//             onWebViewCreated: (v) {
//               v.getTitle();
//             },
//             onFinished: (String? v) async {},
//           ),
//         ),
//       ),
//     );
//   }
// }
