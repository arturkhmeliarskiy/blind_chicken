import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/core_config/utils/logging.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blind_chicken/screens/home/widgets/item_catalog_menu.dart';
import 'package:blind_chicken/old_repos/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:blind_chicken/old_repos/ui_kit/ui_kit.dart';

@RoutePage()
class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final BlindChickenShowDialogError _dialogError = BlindChickenShowDialogError();
  bool _isDialogErrorShown = false;
  int _selectedIndexGender = 1;

  @override
  void initState() {
    super.initState();
    _selectedIndexGender = GetIt.I.get<UpdateDataService>().selectedIndexGender;
  }


  void _handleErrorDialog(CatalogState state) {
    state.maybeMap(
      preloadDataCompleted: (initState) {
        if (initState.isError ?? false) {
          _isDialogErrorShown = true;
          _dialogError.openShowDualog(
            context: context,
            errorMessage: initState.errorMessage ?? '',
            widget: _buildErrorDialogContent(initState),
            onRepeatRequest: () => _repeatRequest(initState),
          );
        } else if (_isDialogErrorShown && !(initState.isError ?? false)) {
          _isDialogErrorShown = false;
          _dialogError.closeShowDialog();
        }
      },
      orElse: () {},
    );
  }

  Widget _buildErrorDialogContent(CatalogState initState) {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadDataCompleted: (value) {
            if (value.isLoadErrorButton ?? false) {
              return const SizedBox(
                height: 15,
                width: 15,
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: BlindChickenColors.backgroundColor,
                  ),
                ),
              );
            } else {
              return Text(
                'Повторить',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: BlindChickenColors.backgroundColor,
                ),
                textAlign: TextAlign.center,
              );
            }
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  void _repeatRequest(PreloadDataCompletedCatalogState initState) {
    context.read<CatalogBloc>().add(
      CatalogEvent.subCategory(
        a: 'get-child-menu',
        id: initState.itemMenu?.id ?? 0,
        b: initState.itemMenu?.brand ?? 0,
        u: initState.itemMenu?.url ?? '',
        pid: initState.itemMenu?.idParent ?? 0,
        item: initState.itemMenu,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogBloc, CatalogState>(
      listener: (context, state) => _handleErrorDialog(state),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _buildSearchBar(context),
              _buildCategorySelection(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.6),
                child: Divider(
                  height: 1,
                  color: BlindChickenColors.borderBottomColor,
                ),
              ),
              _buildPathMenu(),
              Expanded(child: _buildCatalogContent()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return InkWell(
      onTap: () => context.navigateTo(const CatalogSearchRoute()),
      child: Container(
        height: 37,
        margin: const EdgeInsets.symmetric(horizontal: 11.2, vertical: 11.2),
        decoration: BoxDecoration(
          border: Border.all(color: BlindChickenColors.borderTextFieldSearch),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            const SizedBox(width: 14),
            SvgPicture.asset(
              'assets/icons/search.svg',
              height: 14,
              width: 14,
              color: BlindChickenColors.textInput,
            ),
            const SizedBox(width: 7),
            Text(
              'Поиск',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: BlindChickenColors.textInput,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategorySelection() {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 12.6),
      height: 55,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildGenderSelection(),
          _buildCloseButton(),
        ],
      ),
    );
  }

  Widget _buildGenderSelection() {
    return Row(
      children: [
        _buildGenderButton('Женщинам', 1),
        const SizedBox(width: 17.5),
        _buildGenderButton('Мужчинам', 2),
        const SizedBox(width: 17.5),
        _buildGenderButton('Детям', 3),
      ],
    );
  }

  Widget _buildGenderButton(String label, int index) {
    return InkWell(
      onTap: () {
        context.read<CatalogBloc>().add(
          CatalogEvent.subCategory(
            a: 'get-main-menu',
            id: index,
            b: 0,
            u: '',
            pid: 0,
            selectedGenderIndex: index,
          ),
        );
        setState(() => _selectedIndexGender = index);
        GetIt.I.get<AppMetricaEcommerceService>().openPages(
          titleScreen: 'Раздел $label в меню',
        );
      },
      child: Text(
        label,
        style: Theme.of(context).textTheme.displayLarge?.copyWith(
          fontWeight: _selectedIndexGender == index ? FontWeight.w600 : FontWeight.w400,
          shadows: [
            if (_selectedIndexGender == index)
              Shadow(
                color: BlindChickenColors.activeBorderTextField.withOpacity(0.2),
                offset: const Offset(0, 1),
                blurRadius: 1,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return GestureDetector(
      onTap: () => context.navigateTo(
        const HomeAutoRouterRoute(
          children: [MainRoute()],
        ),
      ),
      child: SvgPicture.asset(
        'assets/icons/x.svg',
        height: 21,
        width: 21,
      ),
    );
  }

  Widget _buildPathMenu() {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.pathMenu.isNotEmpty) {
              return Column(
                children: [
                  _buildPathMenuHeader(initState),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.6),
                    child: Divider(
                      height: 1,
                      color: BlindChickenColors.borderBottomColor,
                    ),
                  ),
                ],
              );
            }
            return const SizedBox();
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildPathMenuHeader(PreloadDataCompletedCatalogState initState) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.6),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildBackButton(initState),
          _buildAllProductsButton(initState),
        ],
      ),
    );
  }

  Widget _buildBackButton(PreloadDataCompletedCatalogState initState) {
    return InkWell(
      onTap: () => context.read<CatalogBloc>().add(
        CatalogEvent.backPathMenu(idParent: initState.selectedGenderIndex),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/chevron-left.svg',
            height: 21,
            width: 21,
          ),
          const SizedBox(width: 3),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              initState.pathMenu.last.name,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAllProductsButton(PreloadDataCompletedCatalogState initState) {
    return GestureDetector(
      onTap: () {
        context.read<CatalogBloc>().add(
          CatalogEvent.getInfoProducts(
            path: initState.pathMenu.last.url,
            isCleanHistory: true,
          ),
        );
        context.navigateTo(
          CatalogRoute(
            title: 'Все товары',
            url: initState.pathMenu.last.url,
          ),
        );
      },
      child: Text(
        'Все товары',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }

  Widget _buildCatalogContent() {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        return state.maybeMap(
          preloadDataCompleted: (initState) => _buildCatalogList(initState),
          load: (_) => _buildLoadingIndicator(),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget _buildCatalogList(PreloadDataCompletedCatalogState initState) {
    return GestureDetector(
      onVerticalDragUpdate: (_) {},
      onHorizontalDragEnd: (details) => _handleHorizontalDrag(details, initState),
      child: PopScope(
        canPop: false,
        onPopInvoked: (_) => _handleBackNavigation(initState),
        child: ListView(
          children: [
            Column(
              children: List.generate(
                initState.menu.length,
                    (index) => ItemCatalogMenu(
                  item: initState.menu[index],
                  onTap: () => _handleMenuItemTap(initState, index),
                  selectValue: const [],
                  onRemove: (_) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleHorizontalDrag(DragEndDetails details, PreloadDataCompletedCatalogState initState) {
    if (details.velocity.pixelsPerSecond.dx > 0) {
      if (initState.pathMenu.isNotEmpty) {
        context.read<CatalogBloc>().add(
          CatalogEvent.backPathMenu(idParent: initState.selectedGenderIndex),
        );
      } else if (_selectedIndexGender != 1) {
        context.read<CatalogBloc>().add(
          const CatalogEvent.subCategory(
            a: 'get-main-menu',
            id: 1,
            b: 0,
            u: '',
            pid: 0,
            selectedGenderIndex: 1,
          ),
        );
        setState(() => _selectedIndexGender = 1);
      }
    }
  }

  void _handleBackNavigation(PreloadDataCompletedCatalogState initState) {
    logging('_handleBackNavigation', name: 'Debug', stackTrace: StackTrace.current);
    if (initState.pathMenu.isNotEmpty) {
      context.read<CatalogBloc>().add(
        CatalogEvent.backPathMenu(idParent: initState.selectedGenderIndex),
      );
    } else if (_selectedIndexGender != 1) {
      context.read<CatalogBloc>().add(
        const CatalogEvent.subCategory(
          a: 'get-main-menu',
          id: 1,
          b: 0,
          u: '',
          pid: 0,
          selectedGenderIndex: 1,
        ),
      );
      setState(() => _selectedIndexGender = 1);
    }
  }

  void _handleMenuItemTap(PreloadDataCompletedCatalogState initState, int index) {
    final item = initState.menu[index];
    if (item.brand == 0 && item.sub == 0 && !['Подарочная карта', 'Бренды', 'Sale'].contains(item.name) &&
        !['/proverka-zreniya/', '/servisnaya-karta/'].contains(item.url)) {
      context.read<CatalogBloc>().add(
        CatalogEvent.getInfoProducts(
          path: item.url,
          isCleanHistory: true,
        ),
      );
      context.navigateTo(
        CatalogRoute(
          title: item.name,
          url: item.url,
        ),
      );
    } else if (item.name == 'Подарочная карта') {
      context.navigateTo(GiftCardRoute());
    } else if (item.url == '/servisnaya-karta/') {
      context.read<CatalogBloc>().add(const CatalogEvent.getInfoServiceCard(code: '15846'));
      context.navigateTo(ServiceCardRoute());
    } else if (item.url == '/proverka-zreniya/') {
      context.navigateTo(VisionWarningRoute());
    } else if (item.name == 'Бренды') {
      context.read<BrandBloc>().add(
        BrandEvent.getBrands(
          selectTypePeople: initState.selectedGenderIndex,
          titleScreen: 'бренды',
        ),
      );
      context.navigateTo(BrandsRoute());
    } else if (item.name == 'Sale') {
      context.read<CatalogBloc>().add(
        CatalogEvent.getInfoProducts(
          path: item.url,
          isCleanHistory: true,
        ),
      );
      context.navigateTo(
        CatalogRoute(
          title: item.name,
          url: item.url,
        ),
      );
      GetIt.I.get<AppMetricaEcommerceService>().openPages(titleScreen: 'Sale в меню');
    } else {
      context.read<CatalogBloc>().add(
        CatalogEvent.subCategory(
          a: 'get-child-menu',
          id: item.id,
          b: item.brand,
          u: item.url,
          pid: item.idParent,
          item: item,
        ),
      );
    }
  }

  Widget _buildLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.black,
        backgroundColor: Colors.grey.shade400,
      ),
    );
  }
}