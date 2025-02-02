import 'dart:convert';

import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/repositories/repositories.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class BackgroundDataLoadingService {
  final SharedPreferencesService _sharedPreferencesService;
  final CacheInfoService _cacheInfoService;

  BackgroundDataLoadingService(
    this._sharedPreferencesService,
    this._cacheInfoService,
  );

  Future<dynamic> checkAndUpdateCacheContent({
    required String screen,
    required bool isDataInDatabase,
    required ValueChanged updateCacheContent,
  }) async {
    bool isScreenUpdate = false;
    String screenInfo = '';
    ContentRepository contentRepository = GetIt.I.get<ContentRepository>();

    // final dateLastChangesCachedInformation = _sharedPreferencesService.getString(
    //       key: SharedPrefKeys.dateLastChangesCachedInformation,
    //     ) ??
    //     '';

    // final checkContent = await _contentRepository.checkContentInfo(
    //   dateTime: dateLastChangesCachedInformation,
    // );

    // _sharedPreferencesService.setString(
    //   key: SharedPrefKeys.dateLastChangesCachedInformation,
    //   value: checkContent.dateTime,
    // );

    // _sharedPreferencesService.setString(
    //   key: SharedPrefKeys.cacheChangeScreens,
    //   value: '[]',
    // );

    final cacheChangeScreens = _sharedPreferencesService.getString(
          key: SharedPrefKeys.cacheChangeScreens,
        ) ??
        '';

    List screensCacheChange = jsonDecode(cacheChangeScreens) as List;

    for (int i = 0; i < screensCacheChange.length; i++) {
      if (screensCacheChange[i] == screen) {
        isScreenUpdate = true;
        screenInfo = screen;
      }
    }

    if (isScreenUpdate) {
      final contentInfo = await contentRepository.getContentInfo(
        screen: screen,
      );

      screensCacheChange.remove(screen);

      _sharedPreferencesService.setString(
        key: SharedPrefKeys.cacheChangeScreens,
        value: jsonEncode(screensCacheChange),
      );

      _cacheInfoService.addCacheInfo(
        CacheInfoDataModel(
          screen: screen,
          dateTime: contentInfo.dateTime,
          content: contentInfo.content,
          images: contentInfo.images,
          info: List<Map<String, dynamic>>.from(
            contentInfo.info.map(
              (item) => ContentInfoItemDataModel(
                id: item.id,
                title: item.title,
                mobileImage: item.mobileImage,
                tabletImage: item.tabletImage,
                url: item.url,
              ).toJson(),
            ),
          ).toList(),
        ),
      );
      updateCacheContent(screen);
    }

    if (!isDataInDatabase && screenInfo != 'home') {
      final contentInfo = await contentRepository.getDefaultContentInfo(screen: screen);

      _cacheInfoService.addCacheInfo(
        CacheInfoDataModel(
          screen: screen,
          dateTime: contentInfo.dateTime,
          content: contentInfo.content,
          images: contentInfo.images,
          info: List<Map<String, dynamic>>.from(
            contentInfo.info.map(
              (item) => ContentInfoItemDataModel(
                id: item.id,
                title: item.title,
                mobileImage: item.mobileImage.toString(),
                tabletImage: item.tabletImage.toString(),
                url: item.url,
              ).toJson(),
            ),
          ).toList(),
        ),
      );
    }
  }
}
