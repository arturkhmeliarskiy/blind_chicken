import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class ChatMessangerScreen extends StatefulWidget {
  const ChatMessangerScreen({super.key});

  @override
  State<ChatMessangerScreen> createState() => _ChatMessangerScreenState();
}

class _ChatMessangerScreenState extends State<ChatMessangerScreen> {
  final TextEditingController _message = TextEditingController();

  @override
  void dispose() {
    _message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: BlindChickenColors.backgroundIamge,
        leading: InkWell(
          onTap: () {
            context.maybePop();
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/icons/x.svg',
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Напишите ваше сообщение',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Напишите ваше сообщение',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: BlindChickenColors.chatSubtitle,
                  ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: Container()),
          SizedBox(
            height: 56,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/add_file.svg',
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: BlindChickenColors.backgrounInputColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: _message,
                      onChanged: (value) {
                        setState(() {});
                      },
                      cursorColor: BlindChickenColors.activeBorderTextField,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(top: 4, left: 14),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: _message.text.isNotEmpty
                              ? SvgPicture.asset(
                                  'assets/icons/active_send_message.svg',
                                )
                              : SvgPicture.asset(
                                  'assets/icons/send_message.svg',
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
