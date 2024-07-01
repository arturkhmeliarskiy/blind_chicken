import 'package:auto_route/auto_route.dart';
import 'package:blind_chicken/screens/app/router/app_router.dart';
import 'package:blocs/blocs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class NewsInfoDescriptionScreen extends StatelessWidget {
  const NewsInfoDescriptionScreen({
    super.key,
    required this.info,
  });

  final NewsInfoItemDataModel info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBarBlindChicken(),
      ),
      body: ListView(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          children: [
            const SizedBox(
              height: 12,
            ),
            RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8,
                      ),
                      child: InkWell(
                        onTap: () {
                          context.back();
                        },
                        child: SvgPicture.asset(
                          'assets/icons/arrow-left.svg',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                  TextSpan(
                    text: info.title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              info.createAt,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: BlindChickenColors.textInput,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            CachedNetworkImage(
              imageUrl: info.images.first,
              height: 250,
              fit: BoxFit.fill,
              placeholder: (context, url) => const SizedBox(
                height: 250,
                child: LoadingImage(),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              info.description,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Container(
              height: 40,
              color: BlindChickenColors.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Row(
                    children: [
                      const Icon(
                        Icons.remove_red_eye,
                        size: 14,
                        color: BlindChickenColors.borderInput,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        info.numberViews.toString(),
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              fontSize: 12,
                              color: BlindChickenColors.borderInput,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (info.path.isNotEmpty)
              GestureDetector(
                onTap: () {
                  context.read<CatalogBloc>().add(
                        CatalogEvent.getInfoProducts(
                          path: info.path,
                        ),
                      );
                  context.navigateTo(
                    DashboardRoute(
                      children: [
                        HomeAutoRouterRoute(
                          children: [
                            CatalogRoute(
                              title: '',
                              url: info.path,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: BlindChickenColors.borderBottomColor,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    info.titleButton,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: BlindChickenColors.activeBorderTextField,
                        ),
                  ),
                ),
              ),
            const SizedBox(
              height: 40,
            ),
          ]),
    );
  }
}
