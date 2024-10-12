import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const AppBarBlindChicken(),
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
                    onTap: () async {
                      await LaunchService.launchWhatsapp(context, '79093335046');
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
              child: GestureDetector(
                onTap: () async {
                  await LaunchService.makePhoneCall('8 (800) 500-53-29');
                },
                child: Text(
                  '8 (800) 500-53-29',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 7,
                left: 10.5,
              ),
              child: GestureDetector(
                onTap: () async {
                  await LaunchService.makePhoneCall('8 (495) 120-34-27');
                },
                child: Text(
                  '8 (495) 120-34-27',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
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
              child: GestureDetector(
                onTap: () async {
                  await LaunchService.launchMailClient('sale@slepayakurica.ru');
                },
                child: Text(
                  'sale@slepayakurica.ru',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
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
              child: GestureDetector(
                onTap: () async {
                  await LaunchService.openUrl('https://vk.com/slepayakurica');
                },
                child: Text(
                  'Вконтакте',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
