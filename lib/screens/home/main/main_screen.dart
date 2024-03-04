import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/main/widgets/main_category_item.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _search = TextEditingController();

  @override
  void initState() {
    context.read<CatalogBloc>().add(const CatalogEvent.init());
    super.initState();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) {
        state.maybeWhen(
          notInternetConnection: () {
            context.navigateTo(const NoInternetRoute());
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        backgroundColor: BlindChickenColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarBlindChicken(),
                GestureDetector(
                  onTap: () {
                    context.navigateTo(
                      MainCategoryRoute(
                        title: 'Женщинам',
                        selectIndexType: 0,
                      ),
                    );
                  },
                  child: const MainCategoryItem(
                    image: 'woman',
                    title: 'Женщинам',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.navigateTo(
                      MainCategoryRoute(
                        title: 'Мужчинам',
                        selectIndexType: 1,
                      ),
                    );
                  },
                  child: const MainCategoryItem(
                    image: 'man',
                    title: 'Мужчинам',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.navigateTo(
                      MainCategoryRoute(
                        title: 'Детям',
                        selectIndexType: 2,
                      ),
                    );
                  },
                  child: const MainCategoryItem(
                    image: 'child',
                    title: 'Детям',
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     top: 28,
                //     left: 14,
                //     bottom: 14,
                //   ),
                //   child: Text(
                //     'Бренды',
                //     style: Theme.of(context).textTheme.headline2?.copyWith(
                //           fontWeight: FontWeight.w700,
                //         ),
                //   ),
                // ),
                // Container(
                //   height: 37,
                //   margin: const EdgeInsets.only(
                //     right: 14,
                //     left: 14,
                //   ),
                //   child: Theme(
                //     data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                //     child: TextField(
                //       onTap: () {},
                //       onChanged: (value) {
                //         setState(() {});
                //         context.read<CatalogBloc>().add(CatalogEvent.searchBrand(query: value));
                //       },
                //       controller: _search,
                //       cursorColor: BlindChickenColors.activeBorderTextField,
                //       textCapitalization: TextCapitalization.sentences,
                //       style: Theme.of(context).textTheme.displayMedium,
                //       decoration: InputDecoration(
                //         isDense: true,
                //         enabledBorder: OutlineInputBorder(
                //           borderSide: const BorderSide(
                //             color: BlindChickenColors.borderTextField,
                //           ),
                //           borderRadius: BorderRadius.circular(4),
                //         ),
                //         border: OutlineInputBorder(
                //           borderSide: const BorderSide(
                //             color: BlindChickenColors.borderTextField,
                //           ),
                //           borderRadius: BorderRadius.circular(4),
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderSide: const BorderSide(
                //             color: BlindChickenColors.activeBorderTextField,
                //           ),
                //           borderRadius: BorderRadius.circular(5),
                //         ),
                //         suffixIcon: _search.text.isNotEmpty
                //             ? InkWell(
                //                 onTap: () {
                //                   _search.clear();
                //                   context.read<CatalogBloc>().add(
                //                         const CatalogEvent.searchBrand(query: ''),
                //                       );
                //                 },
                //                 child: Transform.scale(
                //                   scale: 0.5,
                //                   child: SvgPicture.asset('assets/icons/x.svg'),
                //                 ),
                //               )
                //             : const SizedBox(),
                //         hintText: 'Поиск',
                //         hintStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                //               color: BlindChickenColors.textInput,
                //             ),
                //         prefixIconConstraints: const BoxConstraints(
                //           minWidth: 0,
                //           minHeight: 0,
                //         ),
                //         prefixIcon: Padding(
                //           padding: const EdgeInsets.only(
                //             left: 4,
                //             right: 4,
                //           ),
                //           child: Transform.scale(
                //             scale: 0.55,
                //             child: SvgPicture.asset(
                //               'assets/icons/search.svg',
                //               color: BlindChickenColors.textInput,
                //             ),
                //           ),
                //         ),
                //         contentPadding: EdgeInsets.zero,
                //       ),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 14,
                // ),
                // BlocBuilder<CatalogBloc, CatalogState>(builder: (context, state) {
                //   return state.maybeMap(
                //     preloadDataCompleted: (initState) {
                //       return GridView.builder(
                //           shrinkWrap: true,
                //           itemCount: initState.brands.length,
                //           physics: const NeverScrollableScrollPhysics(),
                //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //             crossAxisCount: 2, // number of items in each row
                //             mainAxisSpacing: 11.0, // spacing between rows
                //             crossAxisSpacing: 11.0, // spacing between columns
                //             childAspectRatio: 10.5,
                //           ),
                //           padding: const EdgeInsets.only(
                //             left: 14.0,
                //             right: 14.0,
                //           ), // padding around the grid
                //           itemBuilder: (context, index) {
                //             return InkWell(
                //               onTap: () {
                //                 context.read<CatalogBloc>().add(
                //                       CatalogEvent.pathBrandMenu(items: [
                //                         MenuItemDataModel(
                //                           idParent: 0,
                //                           id: 0,
                //                           url: '',
                //                           name: 'Бренды',
                //                           sub: 0,
                //                           title: 0,
                //                           brand: 0,
                //                         ),
                //                         MenuItemDataModel(
                //                           idParent: 0,
                //                           id: index,
                //                           url: '',
                //                           name: initState.brands[index],
                //                           sub: 0,
                //                           title: 0,
                //                           brand: 0,
                //                         ),
                //                       ]),
                //                     );
                //                 context.navigateTo(
                //                   CatalogRoute(
                //                     isBack: false,
                //                     onBack: () {
                //                       context.read<CatalogBloc>().add(
                //                             CatalogEvent.removePathMenu(
                //                               items: [
                //                                 MenuItemDataModel(
                //                                   idParent: 0,
                //                                   id: 0,
                //                                   url: '',
                //                                   name: 'Бренды',
                //                                   sub: 0,
                //                                   title: 0,
                //                                   brand: 0,
                //                                 ),
                //                                 MenuItemDataModel(
                //                                   idParent: 0,
                //                                   id: index,
                //                                   url: '',
                //                                   name: initState.brands[index],
                //                                   sub: 0,
                //                                   title: 0,
                //                                   brand: 0,
                //                                 ),
                //                               ],
                //                             ),
                //                           );
                //                     },
                //                     path: '',
                //                     title: initState.brands[index],
                //                   ),
                //                 );
                //               },
                //               child: Text(
                //                 initState.brands[index],
                //                 style: Theme.of(context).textTheme.headline2,
                //               ),
                //             );
                //           });
                //     },
                //     orElse: () => const SizedBox(),
                //   );
                // }),
                const SizedBox(
                  height: 96,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
