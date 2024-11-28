import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class BlindChickenPayInstallmentsSberbank extends StatelessWidget {
  const BlindChickenPayInstallmentsSberbank({super.key, required this.onBack});
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 520,
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 32,
                            right: 7,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/pchsbch.svg',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        Text(
                          'Плати Частями от Сбербанка',
                          style: Theme.of(context).textTheme.titleSmall,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: onBack,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.5),
                      child: SvgPicture.asset(
                        'assets/icons/x.svg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Плати частями',
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      TextSpan(
                        text:
                            ' – новый сервис, позволяющий разделить оплату за товар на равные части. Первая часть списывается сразу, оставшиеся платежи через каждые 2 недели или 1 месяц в зависимости от выбранного срока.',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  'Преимущества сервиса:',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '•  Быстрое оформление, как при оплате картой.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      '•  Никаких переплат на срок 2 месяца.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      '•  Без скрытых платежей.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      '•  Для клиентов любых банков.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32),
                child: Text(
                  'Условия:',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• Первый платеж списывается сразу.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      '•  Срок оплаты – 2, 4 и 6 мес.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      '•  Сумма от 1 000 до 150 000 р.',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Подробнее о сервисе на сайте',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      GestureDetector(
                        onTap: () {
                          launchUrl(
                            Uri.parse("https://platichastyami.ru/"),
                            mode: LaunchMode.externalApplication,
                          );
                        },
                        child: Text(
                          'platichastyami.ru',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
