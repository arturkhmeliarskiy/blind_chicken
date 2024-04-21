import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  bool _isWrap = false;
  bool _isButtonTop = false;
  double _historyPosition = 0.0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_loadMoreData);
    super.initState();
  }

  void _loadMoreData() async {
    if (_historyPosition > _scrollController.position.pixels &&
        _scrollController.position.pixels > 0) {
      setState(() {
        _isButtonTop = true;
      });
    } else {
      setState(() {
        _isButtonTop = false;
      });
    }

    _historyPosition = _scrollController.position.pixels;
  }

  Future<void> openUrl(String url) async {
    final _url = Uri.parse(url);
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ListView(
            controller: _scrollController,
            padding: const EdgeInsets.only(
              left: 10.5,
              right: 10.5,
            ),
            children: [
              const SizedBox(
                height: 17.5,
              ),
              Text(
                'Информация',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                'Доставка',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'Доставка курьером заказов более 10 000 ₽* - бесплатно.'
                'Доставка курьером заказов до 10 000 ₽* - от 300 ₽.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '* Стоимость заказа определяется фактической оплатой денежными средствами.',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontFamily: 'Roboto-Light',
                    ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Оплата',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'Бонусными баллами можно оплатить до 100% от суммы заказа.'
                'Оплата наличными доступна при получении заказа в бутике или доставкой курьером.'
                'Заказ можно оплатить банковской картой Visa, Mastercard, Maestro или МИР '
                'на сайте онлайн или при получении заказа в бутике и доставкой курьером. '
                'Заказ должен быть оплачен в размере 100% суммы заказа, если доставка '
                'заказа осуществляется за пределы г. Москва.'
                'Для оплаты банковской картой на сайте необходимо на странице оформления '
                'заказа выбрать способ оплаты "Банковской картой".',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              if (_isWrap)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'Оплата на сайте происходит через ПАО Сбербанк с использованием банковских '
                                'карт платежных систем: МИР, ',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: 'VISA International, Mastercard Worldwide.',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/pay.png',
                      width: 120,
                      height: 28,
                    ),
                    Text(
                      'Для оплаты (ввода реквизитов Вашей карты) Вы будете перенаправлены '
                      'на платежный шлюз ПАО Сбербанк. Соединение с платежным шлюзом и '
                      'передача информации осуществляется в защищенном режиме с использованием '
                      'протокола шифрования SSL. В случае если Ваш банк поддерживает технологию '
                      'безопасного проведения интернет-платежей Verified By Visa или MasterCard SecureCode '
                      'для проведения платежа также может потребоваться ввод специального пароля.'
                      'Настоящий сайт поддерживает 256-битное шифрование. Конфиденциальность '
                      'сообщаемой персональной информации обеспечивается ПАО Сбербанк. '
                      'Введенная информация не будет предоставлена третьим лицам за исключением '
                      'случаев, предусмотренных законодательством РФ. Проведение платежей по '
                      'банковским картам осуществляется в строгом соответствии с требованиями '
                      'платежных систем МИР, Visa Int. и MasterCard Europe Sprl.',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              InkWell(
                onTap: () {
                  setState(() {
                    _isWrap = !_isWrap;
                  });
                },
                child: Text(
                  _isWrap ? 'Скрыть подробности' : 'Подробнее',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Возврат',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'Возврат и обмен товара надлежащего качества возможен в течении 14 '
                'дней с момента покупки, если товар не был в употреблении, при наличии '
                'кассового чека, сохранения упаковки, товарного вида, потребительских '
                'свойств, пломб, фабричных ярлыков.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'Реализация прав потребителей по замене, возврату и ремонту товаров '
                'ненадлежащего качества осуществляется в соответствии с '
                'законодательством в сфере розничной торговли и защиты прав потребителей.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'При оплате банковской картой возврат переведённых денежных средств '
                'производится на тот счет, с которого была осуществлена оплата, в '
                'течение 5-30 рабочих дней, данный срок зависит от банка, который '
                'выпустил банковскую карту.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'При оплате наличными денежными средствами возврат денежных средств '
                'осуществляется в бутике Слепая курица, в котором была '
                'осуществлена покупка.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'При возврате товаров по заказу/интернет-заказу в первую очередь '
                'возвращается оплата бонусами на бонусный счет, во вторую очередь '
                'оплата подарочными картами на баланс подарочных карт, в третью '
                'очередь денежные средства, оплаченные за заказ/интернет-заказ.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'При возврате заказа/интернет-заказа, по которому были начислены, '
                'активированы и использованы бонусы, сумма возврата денежных '
                'средств уменьшается на сумму использованных бонусов.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                'Постановлением Правительства Российской Федерации от 31 декабря '
                '2020 г. N 2463 утвержден ',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              GestureDetector(
                onTap: () {
                  context.navigateTo(BlindChickenPdfViewRoute(
                    url: 'https://slepayakurica.ru/help/non-exchangeable.pdf',
                  ));
                },
                child: Text(
                  'Перечень непродовольственных товаров надлежащего качества, '
                  'не подлежащих обмену',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.navigateTo(BlindChickenPdfViewRoute(
                    url: 'https://slepayakurica.ru/help/sealing_of_goods.pdf',
                  ));
                },
                child: Text(
                  'Пломбирование товара в Слепой курице',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Бонусы по системе лояльности',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'После реализации каждого заказа на бонусный счет зачисляются '
                'баллы в размере 5% или 7% от покупки (товары участвующие в '
                'акциях - 5%, прочие товары - 7%), 1 балл = 1 ₽.'
                'Баллы активируются через 14 дней после зачисления и действуют 365 дней.'
                'При сумме покупок с 1 января по 31 декабря текущего года более '
                '300 000 ₽ на бонусный счет дополнительно начисляется 15 000 ₽, '
                'более 500 000 ₽ - 35 000 ₽, более 1 000 000 ₽ - 100 000 ₽, '
                'более 1 300 000 ₽ - 115 000 ₽, более 1 500 000 ₽ - 135 000 ₽, '
                'более 2 000 000 ₽ - 200 000 ₽ и т. д.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Подарочные бонусы',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'После реализации заказа суммой более 10 000 ₽, на бонусный '
                'счет дополнительно к бонусам по системе лояльности начисляются '
                'баллы в размере 10% от покупки, 1 балл = 1 ₽.\n'
                'Подарочные баллы активируются через 14 дней после зачисления и '
                'действуют 30 дней.\n'
                'Подарочные бонусы суммируются с бонусами, начисленными по системе лояльности.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Накопительные скидки',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'При сумме покупок от 10 000 ₽ - 5%, от 100 000 ₽ - 10%, от 300 000 ₽ - 15%.\n'
                'Накопительные скидки не действуют на товары и услуги, участвующие в акциях.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Условия покупки',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'Оформление заказа клиентом подтверждает:',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              RichText(
                text: TextSpan(
                  children: BlindChickenCheckWordStyle.textToWords(
                    '  •  Срок исполнения заказа 15 рабочих дней.',
                    context,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: BlindChickenCheckWordStyle.textToWords(
                      '  •  Заказ хранится 30 дней, по истечению данного '
                      'срока он расформировывается, денежные средства возврату не подлежат.',
                      context),
                ),
              ),
              Text(
                '  •  Продавец не устанавливает гарантию на проданный товар.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              RichText(
                text: TextSpan(
                  children: BlindChickenCheckWordStyle.textToWords(
                      '  •  Оправа заказчика принимается в работу без гарантии. '
                      'Оценочная стоимость оправы заказчика равна 1 руб.',
                      context),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: BlindChickenCheckWordStyle.textToWords(
                      '  •  Клиент дает согласие на обработку своих персональных '
                      'данных в рамках закона N 152-ФЗ от 27.07.2006 и информирование '
                      'по контактному номеру телефона.',
                      context),
                ),
              ),
              Text(
                '  •  Любые средства демонстрирования свойств очковых или '
                'контактных линз, в том числе их визуального восприятия, '
                'комфортности ношения и т. д. и т.п., не является медицинской '
                'деятельностью по диагностике зрения. С целью устранения '
                'разногласий, клиент соглашается, что при выборе корригирующих '
                'линз, параметры, указанные в заказе, являются волеизъявлением '
                'клиента по заключению договора купли-продажи, при этом никаких '
                'медицинских услуг ему не оказывается.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '     Получение заказа клиентом подтверждает:',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Со свойствами и характеристиками линз, оправ '
                'ознакомлен, со стоимостью заказа согласен.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Заказ получен в полном объёме надлежащего '
                'качества, претензий не имею.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  С условиями заказа ознакомлен и согласен.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  В случае передачи товара третьему лицу '
                'переход права собственности, риски повреждения '
                'товара или его утери переходят к покупателю.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              RichText(
                text: TextSpan(
                  children: BlindChickenCheckWordStyle.textToWords(
                      '      Также обозначенные условия покупатель может '
                      'подтвердить по коду из SMS-сообщения или '
                      'электронной карты лояльности.',
                      context),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Правила по эксплуатации очков (ГОСТ Р 51193-2009)',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                '  •  Снимать и надевать очки необходимо только двумя '
                'руками во избежание деформации оправы;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Очки следует хранить в жестком футляре;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Очковые линзы следует протирать замшевой '
                'или специальной салфеткой из микрофибры, при '
                'сильном загрязнении промывать раствором мыла или '
                'неагрессивного моющего средства в воде при '
                'температуре не выше плюс 40 °С;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Не допускается применение органических '
                'растворителей (ацетон, толуол и т.п.) для '
                'протирки очков;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Не допускается класть очки линзами на '
                'твердую поверхность;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Не допускается прикладывать к очкам значительные '
                'механические усилия;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Не допускается пользоваться очками в помещениях с '
                'температурой выше плюс 60 °С. в том числе в бане, сауне;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Необходимо регулярно проверять затяжку '
                'винтов, крепящих заушник к оправе и линзы в '
                'металлической и безободковой оправах;',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Text(
                '  •  Не допускать падения очков с высоты более '
                '0.5 м на твердую поверхность.',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Документы',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                      if (Platform.isIOS) {
                        context.navigateTo(BlindChickenPdfViewRoute(
                          url: 'https://slepayakurica.ru/help/privacy.pdf',
                        ));
                      } else {
                        await openUrl('https://a0506g.github.io/slepayakurica/');
                      }
                    },
                    child: Text(
                      'Политика конфиденциальности, ',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.navigateTo(BlindChickenPdfViewRoute(
                        url: 'https://slepayakurica.ru/help/agreement_.pdf',
                      ));
                    },
                    child: Text(
                      'Пользовательское',
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  context.navigateTo(BlindChickenPdfViewRoute(
                    url: 'https://slepayakurica.ru/help/agreement_.pdf',
                  ));
                },
                child: Text(
                  'соглашение',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
          if (_isButtonTop)
            GestureDetector(
              onTap: () {
                _scrollController.jumpTo(0.0);
                setState(() {
                  _isButtonTop = false;
                });
              },
              child: Container(
                height: 45,
                width: 45,
                margin: const EdgeInsets.only(left: 15, bottom: 15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: BlindChickenColors.activeBorderTextField,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SvgPicture.asset(
                  'assets/icons/chevron-top.svg',
                ),
              ),
            )
          else
            const SizedBox()
        ],
      ),
    );
  }
}
