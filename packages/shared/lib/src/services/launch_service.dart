import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchService {
  static Future<void> launchWhatsapp(
    BuildContext context,
    String phoneNumber,
  ) async {
    var whatsapp = "+$phoneNumber";
    var whatsappAndroid = Uri.parse("whatsapp://send?phone=$whatsapp&text=Здравствуйте");
    var iosUrl = Uri.parse("https://wa.me/$whatsapp?text=Здравствуйте");
    if (await canLaunchUrl(whatsappAndroid) || await canLaunchUrl(iosUrl)) {
      if (Platform.isIOS) {
        await launchUrl(iosUrl);
      } else {
        await launchUrl(whatsappAndroid);
      }
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: RichText(
            text: TextSpan(
              text: 'WhatsApp',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: BlindChickenColors.backgroundColor,
                  ),
              children: <TextSpan>[
                TextSpan(
                  text: ' не установлен на этом устройстве',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: BlindChickenColors.backgroundColor,
                      ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future<void> launchMailClient(String targetEmail) async {
    final Uri launchUri = Uri(
      scheme: 'mailto',
      path: targetEmail,
    );
    await launchUrl(launchUri);
  }

  static Future<void> openUrl(String url) async {
    final _url = Uri.parse(url);
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }
}
