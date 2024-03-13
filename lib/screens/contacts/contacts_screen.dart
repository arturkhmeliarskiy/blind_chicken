import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  Future<void> _launchWhatsapp(String phoneNumber) async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 17.5,
              left: 10.5,
              bottom: 14,
            ),
            child: Text(
              'Контакты',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.5,
            ),
            child: Text(
              'Онлайн консультация',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10.5,
            ),
            child: Row(
              children: [
                // BlindChickenBorderButton(
                //   onTap: () {
                //     context.navigateTo(const ChatMessangerRoute());
                //   },
                //   title: 'Открыть чат',
                // ),
                // const SizedBox(
                //   width: 14,
                // ),
                BlindChickenBorderButton(
                  onTap: () {
                    _launchWhatsapp('79093335046');
                  },
                  title: 'Написать в WhatsApp',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 28,
              left: 10.5,
            ),
            child: Text(
              'Телефон',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10.5,
            ),
            child: Text(
              '8 (800) 500-53-29',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10.5,
            ),
            child: Text(
              '8 (495) 120-34-27',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 28,
              left: 10.5,
            ),
            child: Text(
              'Email',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10.5,
            ),
            child: Text(
              'sale@slepayakurica.ru',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 28,
              left: 10.5,
            ),
            child: Text(
              'Сообщества',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7,
              left: 10.5,
            ),
            child: Text(
              'Вконтакте',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}
