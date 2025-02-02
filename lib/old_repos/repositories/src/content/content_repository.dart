import 'dart:convert';

import 'package:blind_chicken/old_repos/api_models/api_models.dart';
import 'package:blind_chicken/old_repos/models/models.dart';
import 'package:blind_chicken/old_repos/services/services.dart';
import 'package:blind_chicken/old_repos/shared/shared.dart';
import 'package:flutter/services.dart';

class ContentRepository {
  final CacheInfoService _cacheInfoService;
  final ContentService _contentService;
  final ImageService _imageService;

  ContentRepository(
    this._contentService,
    this._cacheInfoService,
    this._imageService,
  );

  Future<CheckContentInfoDataModel> checkContentInfo({required String dateTime}) async {
    final checkContentInfo = await _contentService.checkContentInfo(
          dateTime: dateTime,
        ) ??
        CheckContentInfoResponse();

    return checkContentInfo.toCheckContentInfo();
  }

  Future<ContentCacheInfoDataModel> getDefaultContentInfo({required String screen}) async {
    List<ContentCacheInfoItemDataModel> infoList = [];
    List<ContentInfoItemDataModel> info = [];

    switch (screen) {
      case 'home':
        info = ConstatntsInfo().home;
      case 'women':
        info = ConstatntsInfo().women;
      case 'men':
        info = ConstatntsInfo().men;
      case 'children':
        info = ConstatntsInfo().children;
    }

    for (int i = 0; i < info.length; i++) {
      Uint8List mobileImage = Uint8List(0);
      if (info[i].mobileImage.isNotEmpty) {
        ByteData bytes = await rootBundle.load('assets/images/${info[i].mobileImage}.jpg');
        mobileImage = bytes.buffer.asUint8List();
      }

      Uint8List tabletImage = Uint8List(0);
      if (info[i].tabletImage.isNotEmpty) {
        ByteData bytes = await rootBundle.load('assets/images/${info[i].tabletImage}.jpg');
        tabletImage = bytes.buffer.asUint8List();
      } else {
        tabletImage = mobileImage;
      }

      infoList.add(
        ContentCacheInfoItemDataModel(
          id: info[i].id,
          title: info[i].title,
          mobileImage: mobileImage,
          tabletImage: tabletImage,
          url: info[i].url,
        ),
      );
    }

    final result = ContentCacheInfoDataModel(
      dateTime: '',
      content: [],
      images: [],
      info: infoList,
      screen: '',
    );

    return result;
  }

  Future<ContentInfoDataModel> getContentInfo({required String screen}) async {
    // final checkContentInfo = await _contentService.getContentInfo(
    //       screen: screen,
    //     ) ??
    //     ContentInfoResponse();

    // return checkContentInfo.toContentInfo();

    List<ContentInfoItemDataModel> infoList = [];

    List<ContentInfoItemResponse> info = [];

    switch (screen) {
      case 'home':
        info = home;
      case 'women':
        info = women;
      case 'men':
        info = men;
      case 'children':
        info = children;
    }

    for (int i = 0; i < info.length; i++) {
      final mobileImage =
          await _imageService.convertNetworkImageToUint8List(info[i].mobileImage ?? '');
      final tabletImage =
          await _imageService.convertNetworkImageToUint8List(info[i].tabletImage ?? '');
      if (mobileImage.isNotEmpty && tabletImage.isNotEmpty) {
        infoList.add(ContentInfoItemDataModel(
          id: info[i].id ?? '',
          title: info[i].title ?? '',
          mobileImage: mobileImage,
          tabletImage: tabletImage,
          url: info[i].url ?? '',
        ));
      }
    }
    final result = ContentInfoDataModel(
      errorMessage: '',
      dateTime: DateTime.now().toString(),
      content: [],
      images: [],
      info: infoList,
      r: '1',
      e: '',
    );

    return result;
  }

  List<ContentCacheInfoDataModel> getContentCacheInfo() {
    final result = _cacheInfoService.listCacheInfo();

    return result.toContentCacheInfo(result);
  }
}

extension on CheckContentInfoResponse {
  CheckContentInfoDataModel toCheckContentInfo() {
    return CheckContentInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      dateTime: dateTime ?? '',
      screens: screens ?? [],
    );
  }
}

extension on ContentInfoResponse {
  ContentInfoDataModel toContentInfo() {
    return ContentInfoDataModel(
      r: r ?? '',
      e: e ?? '',
      errorMessage: errorMessage ?? '',
      dateTime: dateTime ?? '',
      content: content ?? [],
      images: images ?? [],
      info: List<ContentInfoItemDataModel>.from(
        info?.map(
              (item) => ContentInfoItemDataModel(
                id: item.id ?? '',
                title: item.title ?? '',
                mobileImage: item.mobileImage ?? '',
                tabletImage: item.tabletImage ?? '',
                url: item.url ?? '',
              ),
            ) ??
            [],
      ),
    );
  }
}

extension on List<CacheInfoDataModel> {
  List<ContentCacheInfoDataModel> toContentCacheInfo(List<CacheInfoDataModel> values) {
    return List<ContentCacheInfoDataModel>.from(
      values.map(
        (element) => ContentCacheInfoDataModel(
          screen: element.screen,
          dateTime: element.dateTime,
          content: element.content,
          images: element.images,
          info: List<ContentCacheInfoItemDataModel>.from(
            element.info.map((item) {
              final mobileImage = jsonDecode(item['mobileImage']).cast<int>();
              final tabletImage = jsonDecode(item['tabletImage']).cast<int>();
              return ContentCacheInfoItemDataModel(
                id: item['id'] ?? '',
                title: item['title'] ?? '',
                mobileImage: Uint8List.fromList(mobileImage),
                tabletImage: Uint8List.fromList(tabletImage),
                url: item['url'] ?? '',
              );
            }),
          ),
        ),
      ),
    ).toList();
  }
}

List<ContentInfoItemResponse> home = [
  ContentInfoItemResponse(
    id: '0',
    title: 'Женщинам',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/l.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/l.jpg',
    url: '/zhenshchinam/',
  ),
  ContentInfoItemResponse(
    id: '1',
    title: 'Мужчинам',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/m.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/m.jpg',
    url: '/muzhchinam/',
  ),
  ContentInfoItemResponse(
    id: '2',
    title: 'Детям',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/k.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/k.jpg',
    url: '/detyam/',
  ),
  ContentInfoItemResponse(
    id: '3',
    title: 'Подарочная карта',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/280824/giftcard_m.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250924/gift.jpg',
    url: '/giftcard/',
  ),
  ContentInfoItemResponse(
    id: '4',
    title: 'Проверка зрения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/w34.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/w64.jpg',
    url: '/proverka-zreniya/',
  ),
  ContentInfoItemResponse(
    id: '5',
    title: 'Спецпредложения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale.jpg',
    url: '/sale/',
  ),
  ContentInfoItemResponse(
    id: '6',
    title: 'Бренды',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands1.jpg',
    url: '/brands/',
  ),
];

List<ContentInfoItemResponse> women = [
  ContentInfoItemResponse(
    id: '0',
    title: 'Оптика',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/1.jpg',
    url: '/optika/',
  ),
  ContentInfoItemResponse(
    id: '1',
    title: 'Обувь',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/2.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/2.jpg',
    url: '/obuv/',
  ),
  ContentInfoItemResponse(
    id: '2',
    title: 'Одежда',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/3.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/3.jpg',
    url: '/odezhda/',
  ),
  ContentInfoItemResponse(
    id: '3',
    title: 'Сумки',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/4.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/4.jpg',
    url: '/sumki/',
  ),
  ContentInfoItemResponse(
    id: '4',
    title: 'Аксессуары',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/5.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/5.jpg',
    url: '/aksessuary/',
  ),
  ContentInfoItemResponse(
    id: '5',
    title: 'Косметика',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/6.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/lady/6.jpg',
    url: '/kosmetika/',
  ),
  ContentInfoItemResponse(
    id: '6',
    title: 'Подарочная карта',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/280824/giftcard_m.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250924/gift.jpg',
    url: '/giftcard/',
  ),
  ContentInfoItemResponse(
    id: '7',
    title: 'Проверка зрения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/w34.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/w64.jpg',
    url: '/proverka-zreniya/',
  ),
  ContentInfoItemResponse(
    id: '8',
    title: 'Спецпредложения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale.jpg',
    url: '/sale/zhenshchinam/',
  ),
  ContentInfoItemResponse(
    id: '9',
    title: 'Бренды',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands1.jpg',
    url: '/brands/zhenshchinam/',
  ),
];

List<ContentInfoItemResponse> men = [
  ContentInfoItemResponse(
    id: '0',
    title: 'Оптика',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/1.jpg',
    url: '/muzhchinam/optika/',
  ),
  ContentInfoItemResponse(
    id: '1',
    title: 'Обувь',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/2.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/2.jpg',
    url: '/muzhchinam/obuv/',
  ),
  ContentInfoItemResponse(
    id: '2',
    title: 'Одежда',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/3.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/3.jpg',
    url: '/muzhchinam/odezhda/',
  ),
  ContentInfoItemResponse(
    id: '3',
    title: 'Сумки',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/4.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/4.jpg',
    url: '/muzhchinam/sumki/',
  ),
  ContentInfoItemResponse(
    id: '4',
    title: 'Аксессуары',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/5.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/5.jpg',
    url: '/muzhchinam/aksessuary/',
  ),
  ContentInfoItemResponse(
    id: '5',
    title: 'Косметика',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/6.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/man/6.jpg',
    url: '/muzhchinam/kosmetika/',
  ),
  ContentInfoItemResponse(
    id: '6',
    title: 'Подарочная карта',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/280824/giftcard_m.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250924/gift.jpg',
    url: '/giftcard/',
  ),
  ContentInfoItemResponse(
    id: '7',
    title: 'Проверка зрения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/m34.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/m64.jpg',
    url: '/proverka-zreniya/',
  ),
  ContentInfoItemResponse(
    id: '8',
    title: 'Спецпредложения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale.jpg',
    url: '/sale/muzhchinam/',
  ),
  ContentInfoItemResponse(
    id: '9',
    title: 'Бренды',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands1.jpg',
    url: '/brands/muzhchinam/',
  ),
];

List<ContentInfoItemResponse> children = [
  ContentInfoItemResponse(
    id: '0',
    title: 'Оптика',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/1.jpg',
    url: '/detyam/optika/',
  ),
  ContentInfoItemResponse(
    id: '1',
    title: 'Для девочек',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/2.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/2.jpg',
    url: '/detyam/odezhda-dlya-devochek/',
  ),
  ContentInfoItemResponse(
    id: '2',
    title: 'Для мальчиков',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/3.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/3.jpg',
    url: '/detyam/odezhda-dlya-malchikov/',
  ),
  ContentInfoItemResponse(
    id: '3',
    title: 'Сумки',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/4.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/4.jpg',
    url: '/detyam/sumki/',
  ),
  ContentInfoItemResponse(
    id: '4',
    title: 'Аксессуары',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/5.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/5.jpg',
    url: '/detyam/aksessuary/',
  ),
  ContentInfoItemResponse(
    id: '5',
    title: 'Для малышей',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/6.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250125/kids/6.jpg',
    url: '/detyam/dlya-malyshey/',
  ),
  ContentInfoItemResponse(
    id: '6',
    title: 'Подарочная карта',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/280824/giftcard_m.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/250924/gift.jpg',
    url: '/giftcard/',
  ),
  ContentInfoItemResponse(
    id: '7',
    title: 'Проверка зрения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/d34.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/vision/250125/d64.jpg',
    url: '/proverka-zreniya/',
  ),
  ContentInfoItemResponse(
    id: '8',
    title: 'Спецпредложения',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale1.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/161024/sale.jpg',
    url: '/sale/detyam/',
  ),
  ContentInfoItemResponse(
    id: '9',
    title: 'Бренды',
    mobileImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands.jpg',
    tabletImage: 'https://slepayakurica.ru/local/templates/m/content/main/111024/brands1.jpg',
    url: '/brands/detyam/',
  ),
];
