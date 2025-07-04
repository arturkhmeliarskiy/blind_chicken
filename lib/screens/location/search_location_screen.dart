import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class SearchLocationScreen extends StatefulWidget {
  const SearchLocationScreen({
    super.key,
    required this.title,
    required this.value,
    required this.contentType,
    required this.selectItem,
    this.cityId,
    this.streetId,
    this.withParent,
  });

  final String title;
  final String value;
  final String contentType;
  final String? cityId;
  final String? streetId;
  final int? withParent;
  final ValueChanged<SearchLocationInfoDataModel?> selectItem;

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  final TextEditingController _title = TextEditingController();
  Timer? _timer;
  final List<String> _searchResultCities = [];

  @override
  void initState() {
    _title.text = widget.value;
    super.initState();
  }

  @override
  void dispose() {
    _title.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
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
                              context.read<SearchLocationBloc>().add(
                                    SearchLocationEvent.searchQuery(
                                      query: value,
                                      contentType: widget.contentType,
                                      cityId: widget.cityId,
                                      streetId: widget.streetId,
                                      withParent: widget.withParent,
                                    ),
                                  );
                              if (_title.text.isEmpty) {
                                setState(() {
                                  _title.clear();
                                  widget.selectItem(null);
                                });
                              }
                            },
                            autofocus: true,
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
                              suffixIcon: BlocBuilder<SearchLocationBloc, SearchLocationState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    preloadData: (initState) {
                                      return _title.text.isNotEmpty
                                          ? GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _title.clear();
                                                  widget.selectItem(null);
                                                });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/icons/x.svg',
                                                ),
                                              ),
                                            )
                                          : const SizedBox();
                                    },
                                    load: (value) {
                                      return Container(
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
                                      );
                                    },
                                    orElse: () => const SizedBox(),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder<SearchLocationBloc, SearchLocationState>(
                        builder: (context, state) {
                      return state.maybeMap(
                        preloadData: (initState) {
                          return LayoutBuilder(builder: (context, constraints) {
                            if (_title.text.isNotEmpty &&
                                initState.searchResult.result.isNotEmpty) {
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: initState.searchResult.result.length,
                                itemBuilder: (context, index) {
                                  final parents = initState
                                      .searchResult.result[index].parents.reversed
                                      .toList();
                                  return GestureDetector(
                                    onTap: () {
                                      widget.selectItem(initState.searchResult.result[index]);
                                      context.maybePop();
                                    },
                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.only(
                                        top: 14,
                                        left: 12.6,
                                      ),
                                      child: RichText(
                                        maxLines: 2,
                                        text: TextSpan(
                                          text:
                                              '${initState.searchResult.result[index].typeShort}. ',
                                          style: Theme.of(context).textTheme.displayMedium,
                                          children: [
                                            TextSpan(
                                              text: initState.searchResult.result[index].name,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                            ),
                                            TextSpan(
                                              children: List.generate(
                                                parents.length,
                                                (index) {
                                                  return TextSpan(
                                                    text:
                                                        ' ${parents[index].typeShort}. ${parents[index].name}',
                                                    style:
                                                        Theme.of(context).textTheme.displayMedium,
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            } else {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  top: 14,
                                  left: 12.6,
                                  right: 12.6,
                                ),
                                child: Text(
                                  _title.text.isNotEmpty && _searchResultCities.isEmpty
                                      ? 'Ничего не найдено'
                                      : 'Введите наименование населенного пункта',
                                  style: Theme.of(context).textTheme.displayMedium,
                                ),
                              );
                            }
                          });
                        },
                        orElse: () => const SizedBox(),
                      );
                    }),
                  )
                ],
              ),
            ),
            BlindChickenTitleButton(
              title: 'Закрыть',
              onChange: () {
                context.maybePop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
