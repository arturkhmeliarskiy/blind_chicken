import 'package:auto_route/auto_route.dart';
import 'package:blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class OrderPdfBlankViewScreen extends StatelessWidget {
  const OrderPdfBlankViewScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) {
        state.maybeMap(
          preloadDataCompleted: (initState) {
            if (initState.isSuccessfullySavedFile != null) {
              if (initState.isSuccessfullySavedFile ?? false) {
                BlindChickenMessage().showOverlay(
                  context,
                  'Файл сохранен',
                  () {},
                );
              } else {
                BlindChickenMessage().showOverlay(
                  context,
                  'Файл не сохранен',
                  () {},
                );
              }
            }
          },
          orElse: () {},
        );
      },
      child: Stack(
        children: [
          SafeArea(
            child: Scaffold(
              body: Column(
                children: [
                  const AppBarBlindChicken(),
                  Expanded(
                    child: BlocBuilder<AccountBloc, AccountState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          preloadDataCompleted: (initState) {
                            return SfPdfViewerTheme(
                              data: const SfPdfViewerThemeData(
                                progressBarColor: BlindChickenColors.activeBorderTextField,
                                backgroundColor: BlindChickenColors.borderBottomColor,
                              ),
                              child: Stack(
                                children: [
                                  SfPdfViewer.memory(
                                    initState.file,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
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
                                  )
                                ],
                              ),
                            );
                          },
                          orElse: () => const SizedBox(),
                        );
                      },
                    ),
                  ),
                ],
              ),
              floatingActionButton: BlocBuilder<AccountBloc, AccountState>(
                builder: (context, state) {
                  return state.maybeMap(
                    preloadDataCompleted: (initState) {
                      return FloatingActionButton(
                        backgroundColor: BlindChickenColors.backgroundColor,
                        onPressed: () {
                          context.read<AccountBloc>().add(
                                AccountEvent.saveDocument(
                                  fileName: initState.fileName,
                                  bytes: initState.file,
                                ),
                              );
                        },
                        child: const Icon(
                          Icons.download,
                          color: BlindChickenColors.activeBorderTextField,
                          size: 28,
                        ),
                      );
                    },
                    orElse: () => const SizedBox(),
                  );
                },
              ),
            ),
          ),
          BlocBuilder<AccountBloc, AccountState>(builder: (context, state) {
            return state.maybeMap(
              preloadDataCompleted: (value) {
                return (value.isLoadOpenPdf ?? false)
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey.shade400,
                        ),
                      )
                    : const SizedBox();
              },
              orElse: () => const SizedBox(),
            );
          })
        ],
      ),
    );
  }
}
