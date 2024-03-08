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
  });

  final String title;
  final String value;
  final String contentType;
  final String? cityId;
  final String? streetId;
  final ValueChanged<SearchLocationInfoDataModel?> selectItem;

  @override
  State<SearchLocationScreen> createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  final TextEditingController _title = TextEditingController();
  bool _isLoading = false;
  final List<String> _searchResultCities = [];

  @override
  void initState() {
    _title.text = widget.value;
    super.initState();
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
                                  context.popRoute();
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
                                    ),
                                  );
                              setState(() {
                                _isLoading = true;
                              });
                              await Future.delayed(const Duration(seconds: 3), () {
                                setState(() {
                                  _isLoading = false;
                                });
                              });
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
                                  : const SizedBox(),
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
                                !_isLoading &&
                                initState.searchResult.result.isNotEmpty) {
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: initState.searchResult.result.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      widget.selectItem(initState.searchResult.result[index]);
                                      context.popRoute();
                                    },
                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.only(
                                        top: 14,
                                        left: 12.6,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '${initState.searchResult.result[index].typeShort}. ',
                                            style: Theme.of(context).textTheme.displayMedium,
                                          ),
                                          Text(
                                            initState.searchResult.result[index].name,
                                            style: Theme.of(context).textTheme.displayMedium,
                                          ),
                                        ],
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
                                  _title.text.isNotEmpty &&
                                          _searchResultCities.isEmpty &&
                                          !_isLoading
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
            BlindChickenCloseButton(
              onClose: () {
                context.popRoute();
              },
            ),
          ],
        ),
      ),
    );
  }
}
