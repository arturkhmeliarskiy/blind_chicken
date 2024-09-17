import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class DoctorAppointmentCreateRecord extends StatelessWidget {
  const DoctorAppointmentCreateRecord({
    super.key,
    required this.name,
    required this.date,
    required this.time,
  });

  final String name;
  final String date;
  final String time;

  String ellipsis() {
    String result = '';
    for (int i = 0; i < 1000; i++) {
      result = '$result.';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        height: 272,
        width: MediaQuery.of(context).size.width - 16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      'Запись создана',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(10.5),
                        child: SvgPicture.asset(
                          'assets/icons/x.svg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 32,
                  minHeight: 18,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 108,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Бутик',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Text(
                              ellipsis(),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    height: 1.8,
                                    color: BlindChickenColors.dotItem,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17.5,
                    ),
                    Expanded(
                      child: Text(
                        name,
                        style: Theme.of(context).textTheme.headlineLarge,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: SizedBox(
                height: 18,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 108,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Дата',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Text(
                              ellipsis(),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    height: 1.8,
                                    color: BlindChickenColors.dotItem,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17.5,
                    ),
                    Expanded(
                      child: Text(
                        date,
                        style: Theme.of(context).textTheme.headlineLarge,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 32,
                  minHeight: 18,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 108,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Время',
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Text(
                              ellipsis(),
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    height: 1.8,
                                    color: BlindChickenColors.dotItem,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17.5,
                    ),
                    Expanded(
                      child: Text(
                        time,
                        style: Theme.of(context).textTheme.headlineLarge,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Text(
                'Ждем вас в выбранное время.',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: BlindChickenColors.textInput,
                    ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
