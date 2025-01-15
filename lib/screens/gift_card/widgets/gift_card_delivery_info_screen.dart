import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class GiftCardDeliveryInfoScreen extends StatefulWidget {
  const GiftCardDeliveryInfoScreen({
    super.key,
    required this.title,
    required this.selectItem,
  });

  final String title;
  final ValueChanged<String> selectItem;

  @override
  State<GiftCardDeliveryInfoScreen> createState() => _GiftCardDeliveryInfoScreenState();
}

class _GiftCardDeliveryInfoScreenState extends State<GiftCardDeliveryInfoScreen> {
  final TextEditingController _title = TextEditingController();
  bool _isLoading = false;
  final List<String> _searchResultCities = [];
  List<String> _listItems = [];

  final List<String> _cities = [
    'Москва',
    'Абрамцево',
    'Алабино',
    'Апрелевка',
    'Видное',
    'Волоколамск',
  ];

  final List<String> _streets = [
    'Абельмановская',
    'Абрамцевская',
    'Авангардная',
    'Авиаконструктора',
    'Авиаконструктора',
    'Авиационная',
  ];

  final List<String> _house = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  void initState() {
    if (widget.title == 'Выберите город') {
      _listItems = _cities;
    } else if (widget.title == 'Выберите улицу') {
      _listItems = _streets;
    } else {
      _listItems = _house;
    }
    super.initState();
  }

  void _handleSearch(String input) {
    _searchResultCities.clear();
    for (var str in _listItems) {
      if (str.toLowerCase().contains(input.toLowerCase())) {
        setState(() {
          _searchResultCities.add(str);
        });
      }
    }
  }

  @override
  void dispose() {
    _title.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12.6,
                      right: 12.6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15.75,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.title,
                                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.maybePop();
                                },
                                child: SizedBox(
                                  height: 21,
                                  width: 21,
                                  child: SvgPicture.asset(
                                    'assets/icons/x.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15.75,
                        ),
                        SizedBox(
                          height: 37,
                          child: TextField(
                            onChanged: (value) async {
                              _handleSearch(value);
                              setState(() {
                                _isLoading = true;
                              });
                              await Future.delayed(const Duration(seconds: 3), () {
                                setState(() {
                                  _isLoading = false;
                                });
                              });
                            },
                            controller: _title,
                            cursorColor: BlindChickenColors.activeBorderTextField,
                            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                  height: 1,
                                ),
                            maxLines: 1,
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.borderTextField,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.borderTextField,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: BlindChickenColors.activeBorderTextField,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: const EdgeInsets.only(
                                left: 12,
                              ),
                              suffixIcon: _title.text.isNotEmpty
                                  ? _isLoading
                                      ? Container(
                                          width: 10,
                                          height: 10,
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 16,
                                            right: 16,
                                          ),
                                          child: CircularProgressIndicator(
                                            strokeWidth: 3,
                                            color: Colors.black,
                                            backgroundColor: Colors.grey.shade400,
                                          ),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _title.clear();
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset(
                                              'assets/icons/x.svg',
                                            ),
                                          ),
                                        )
                                  : const SizedBox(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_title.text.isNotEmpty && !_isLoading && _searchResultCities.isNotEmpty)
                    Expanded(
                      child: ListView.builder(
                        itemCount: _searchResultCities.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              widget.selectItem(_searchResultCities[index]);
                              context.maybePop();
                            },
                            child: Container(
                              height: 50,
                              padding: const EdgeInsets.only(
                                top: 14,
                                left: 12.6,
                              ),
                              child: Text(
                                _searchResultCities[index],
                                style: Theme.of(context).textTheme.displayMedium,
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 14,
                        left: 12.6,
                        right: 12.6,
                      ),
                      child: Text(
                        _title.text.isNotEmpty && _searchResultCities.isEmpty && !_isLoading
                            ? 'Ничего не найдено'
                            : 'Введите наименование населенного пункта',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    )
                ],
              ),
            ),
            BlindChickenTitleButton(
              title: 'Закрыть',
              onChange: () {
                widget.selectItem(_title.text);
                context.maybePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
