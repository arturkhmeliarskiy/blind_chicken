import 'package:blind_chicken/core/bloc/bloc_action.dart';
import 'package:blind_chicken/core_config/di/app_locator.dart';
import 'package:blind_chicken/core_config/ui/widgets/widgets/items/base_list_tile.dart';
import 'package:blind_chicken/core_config/utils/context_extensions.dart';
import 'package:blind_chicken/gen/assets.gen.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ShowSelectMediaSourceModal extends BlocAction {
  final bool? onlyPhoto;

  ShowSelectMediaSourceModal({this.onlyPhoto});
}

Future<void> showSelectMediaSourceModal(
  BuildContext externalContext, {
  Function(XFile?)? tapOnPhoto,
  Function(XFile?)? tapOnVideo,
  Function(XFile?)? tapOnPhotoGallery,
  Function(XFile?)? tapOnVideoGallery,
  bool? onlyPhoto,
}) async {
  await showMaterialModalBottomSheet(
    context: externalContext,
    builder: (context) => _SelectMediaModal(
      externalContext: externalContext,
      tapOnPhoto: tapOnPhoto,
      tapOnVideo: tapOnVideo,
      tapOnPhotoGallery: tapOnPhotoGallery,
      tapOnVideoGallery: tapOnVideoGallery,
      onlyPhoto: onlyPhoto,
    ),
  );
}

class _SelectMediaModal extends StatelessWidget {
  const _SelectMediaModal(
      {required this.externalContext,
      this.tapOnVideo,
      this.tapOnPhoto,
      this.tapOnPhotoGallery,
      this.tapOnVideoGallery,
      this.onlyPhoto});

  final BuildContext externalContext;

  final Function(XFile?)? tapOnVideo;
  final Function(XFile?)? tapOnPhoto;

  final Function(XFile?)? tapOnPhotoGallery;
  final Function(XFile?)? tapOnVideoGallery;

  final bool? onlyPhoto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SafeArea(
        top: false,
        child: buildItems(),
      ),
    );
  }

  Column buildItems() {
    if (onlyPhoto == true) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseListTile(
            title: externalContext.localizations.takeNewPhoto,
            leadingSvgIconPath: Assets.imagesExternal.photo,
            trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
            onPressed: () async {
              final ImagePicker picker = Locator.injection();
              XFile? file = await picker.pickImage(source: ImageSource.camera);
              tapOnPhoto?.call(file);
              if (externalContext.mounted) {
                Navigator.of(externalContext).pop();
              }
            },
          ),
          BaseListTile(
            title: externalContext.localizations.selectPhotoFromGallery,
            leadingSvgIconPath: Assets.imagesExternal.photo,
            trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
            onPressed: () async {
              final ImagePicker picker = Locator.injection();
              XFile? file = await picker.pickImage(source: ImageSource.gallery);
              tapOnPhotoGallery?.call(file);
              if (externalContext.mounted) {
                Navigator.of(externalContext).pop();
              }
            },
          ),
        ],
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BaseListTile(
          title: externalContext.localizations.takeNewPhoto,
          leadingSvgIconPath: Assets.imagesExternal.photo,
          trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
          onPressed: () async {
            final ImagePicker picker = Locator.injection();
            XFile? file = await picker.pickImage(source: ImageSource.camera);
            tapOnPhoto?.call(file);
            if (externalContext.mounted) {
              Navigator.of(externalContext).pop();
            }
          },
        ),
        BaseListTile(
          title: externalContext.localizations.recordVideo,
          leadingSvgIconPath: Assets.imagesExternal.video,
          trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
          onPressed: () async {
            final ImagePicker picker = Locator.injection();
            XFile? file = await picker.pickVideo(source: ImageSource.camera);
            tapOnPhoto?.call(file);
            if (externalContext.mounted) {
              Navigator.of(externalContext).pop();
            }
          },
        ),
        BaseListTile(
          title: externalContext.localizations.selectFromGallery,
          leadingSvgIconPath: Assets.imagesExternal.folder1,
          trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
          onPressed: () async {
            Navigator.of(externalContext).pop();
            _showSelectMediaSourceModal(
              externalContext,
              tapOnPhotoGallery: tapOnPhotoGallery,
              tapOnVideoGallery: tapOnVideoGallery,
            );
          },
        ),
      ],
    );
  }
}

Future<void> _showSelectMediaSourceModal(
  BuildContext externalContext, {
  Function(XFile?)? tapOnPhotoGallery,
  Function(XFile?)? tapOnVideoGallery,
}) async {
  await showMaterialModalBottomSheet(
    context: externalContext,
    builder: (context) => _SelectInnerMediaModal(
      externalContext: externalContext,
      tapOnPhotoGallery: tapOnPhotoGallery,
      tapOnVideoGallery: tapOnVideoGallery,
    ),
  );
}

class _SelectInnerMediaModal extends StatelessWidget {
  const _SelectInnerMediaModal({
    required this.externalContext,
    this.tapOnPhotoGallery,
    this.tapOnVideoGallery,
  });

  final BuildContext externalContext;

  final Function(XFile?)? tapOnPhotoGallery;
  final Function(XFile?)? tapOnVideoGallery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BaseListTile(
              title: externalContext.localizations.selectPhotoFromGallery,
              leadingSvgIconPath: Assets.imagesExternal.photo,
              trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
              onPressed: () async {
                final ImagePicker picker = Locator.injection();
                XFile? file = await picker.pickImage(source: ImageSource.gallery);
                tapOnPhotoGallery?.call(file);
                if (externalContext.mounted) {
                  Navigator.of(externalContext).pop();
                }
              },
            ),
            BaseListTile(
              title: externalContext.localizations.selectVideoFromGallery,
              leadingSvgIconPath: Assets.imagesExternal.video,
              trailingSvgIconPath: Assets.imagesExternal.keyboardArrowRight,
              onPressed: () async {
                final ImagePicker picker = Locator.injection();
                XFile? file = await picker.pickVideo(source: ImageSource.gallery);
                tapOnVideoGallery?.call(file);
                if (externalContext.mounted) {
                  Navigator.of(externalContext).pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
