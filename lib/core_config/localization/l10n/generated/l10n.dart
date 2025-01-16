// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalization {
  AppLocalization();

  static AppLocalization? _current;

  static AppLocalization get current {
    assert(_current != null,
        'No instance of AppLocalization was loaded. Try to initialize the AppLocalization delegate before accessing AppLocalization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalization();
      AppLocalization._current = instance;

      return instance;
    });
  }

  static AppLocalization of(BuildContext context) {
    final instance = AppLocalization.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalization present in the widget tree. Did you add AppLocalization.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalization? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /// `Далее`
  String get forward {
    return Intl.message(
      'Далее',
      name: 'forward',
      desc: '',
      args: [],
    );
  }

  /// `Ок`
  String get ok {
    return Intl.message(
      'Ок',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Да`
  String get yes {
    return Intl.message(
      'Да',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Внимание!`
  String get attention {
    return Intl.message(
      'Внимание!',
      name: 'attention',
      desc: '',
      args: [],
    );
  }

  /// `Оплатить`
  String get pay {
    return Intl.message(
      'Оплатить',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Оплачено`
  String get paid {
    return Intl.message(
      'Оплачено',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать`
  String get choose {
    return Intl.message(
      'Выбрать',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Клонировать товар`
  String get cloneProduct {
    return Intl.message(
      'Клонировать товар',
      name: 'cloneProduct',
      desc: '',
      args: [],
    );
  }

  /// `Удалить товар`
  String get deleteProduct {
    return Intl.message(
      'Удалить товар',
      name: 'deleteProduct',
      desc: '',
      args: [],
    );
  }

  /// `Название не может быть пустым`
  String get nameCannotBeEmpty {
    return Intl.message(
      'Название не может быть пустым',
      name: 'nameCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get enter {
    return Intl.message(
      'Войти',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Получайте больше заказов онлайн!`
  String get takeMoreOrdersOnline {
    return Intl.message(
      'Получайте больше заказов онлайн!',
      name: 'takeMoreOrdersOnline',
      desc: '',
      args: [],
    );
  }

  /// `Мобильное приложение для вас и ваших клиентов всего в двух шагах.`
  String get mobileAppForYouAndYourClientsInTwoSteps {
    return Intl.message(
      'Мобильное приложение для вас и ваших клиентов всего в двух шагах.',
      name: 'mobileAppForYouAndYourClientsInTwoSteps',
      desc: '',
      args: [],
    );
  }

  /// `Приложение #1 для ваших клиентов`
  String get appForYourClients {
    return Intl.message(
      'Приложение #1 для ваших клиентов',
      name: 'appForYourClients',
      desc: '',
      args: [],
    );
  }

  /// `Приложение уже готово! И его не нужно устанавливать. Просто поделитесь ссылкой с вашими клиентами.`
  String get appAlreadyReadyShareLink {
    return Intl.message(
      'Приложение уже готово! И его не нужно устанавливать. Просто поделитесь ссылкой с вашими клиентами.',
      name: 'appAlreadyReadyShareLink',
      desc: '',
      args: [],
    );
  }

  /// `Приложение #2 для управления магазином`
  String get appForYourBusiness {
    return Intl.message(
      'Приложение #2 для управления магазином',
      name: 'appForYourBusiness',
      desc: '',
      args: [],
    );
  }

  /// `В этом приложении вы управляете заказами, каталогом товаров и настройками магазина. Все просто!`
  String get inAppControlOrdersGoodsSettings {
    return Intl.message(
      'В этом приложении вы управляете заказами, каталогом товаров и настройками магазина. Все просто!',
      name: 'inAppControlOrdersGoodsSettings',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Google`
  String get enterWithGoogle {
    return Intl.message(
      'Войти с Google',
      name: 'enterWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Войти с Apple`
  String get enterWithApple {
    return Intl.message(
      'Войти с Apple',
      name: 'enterWithApple',
      desc: '',
      args: [],
    );
  }

  /// `Я согласен с `
  String get iAgreeWithOnboarding {
    return Intl.message(
      'Я согласен с ',
      name: 'iAgreeWithOnboarding',
      desc: '',
      args: [],
    );
  }

  /// `пользовательским соглашением `
  String get conditionsOfUseOnboarding {
    return Intl.message(
      'пользовательским соглашением ',
      name: 'conditionsOfUseOnboarding',
      desc: '',
      args: [],
    );
  }

  /// `и `
  String get andOnboarding {
    return Intl.message(
      'и ',
      name: 'andOnboarding',
      desc: '',
      args: [],
    );
  }

  /// `политикой конфиденциальности`
  String get privacyPolicyOnboarding {
    return Intl.message(
      'политикой конфиденциальности',
      name: 'privacyPolicyOnboarding',
      desc: '',
      args: [],
    );
  }

  /// `Управляйте заказами`
  String get controlOrders {
    return Intl.message(
      'Управляйте заказами',
      name: 'controlOrders',
      desc: '',
      args: [],
    );
  }

  /// `Вы получите уведомление о новых заказах`
  String get youWillGetNotificationsAboutNewOrders {
    return Intl.message(
      'Вы получите уведомление о новых заказах',
      name: 'youWillGetNotificationsAboutNewOrders',
      desc: '',
      args: [],
    );
  }

  /// `Собрано`
  String get ordersCardItemStateCollected {
    return Intl.message(
      'Собрано',
      name: 'ordersCardItemStateCollected',
      desc: '',
      args: [],
    );
  }

  /// `Собрать`
  String get ordersCardItemStateCollect {
    return Intl.message(
      'Собрать',
      name: 'ordersCardItemStateCollect',
      desc: '',
      args: [],
    );
  }

  /// `Заказы`
  String get ordersHeader {
    return Intl.message(
      'Заказы',
      name: 'ordersHeader',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Тарифный план`
  String get tariffPlan {
    return Intl.message(
      'Тарифный план',
      name: 'tariffPlan',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get apply {
    return Intl.message(
      'Применить',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Транзакции`
  String get transactions {
    return Intl.message(
      'Транзакции',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Нельзя поменять страну`
  String get cannotChangeCountry {
    return Intl.message(
      'Нельзя поменять страну',
      name: 'cannotChangeCountry',
      desc: '',
      args: [],
    );
  }

  /// `Воспользуйтесь созданием нового магазина`
  String get settingsDeliveryAddressCannotChangeCountryBody {
    return Intl.message(
      'Воспользуйтесь созданием нового магазина',
      name: 'settingsDeliveryAddressCannotChangeCountryBody',
      desc: '',
      args: [],
    );
  }

  /// `ВЫБЕРИТЕ ТИП ДОСТАВКИ`
  String get settingsDeliveryHeaderDescription {
    return Intl.message(
      'ВЫБЕРИТЕ ТИП ДОСТАВКИ',
      name: 'settingsDeliveryHeaderDescription',
      desc: '',
      args: [],
    );
  }

  /// `МЕСТО ВЫДАЧИ ЗАКАЗА`
  String get settingsDeliveryPickupHeaderDescription {
    return Intl.message(
      'МЕСТО ВЫДАЧИ ЗАКАЗА',
      name: 'settingsDeliveryPickupHeaderDescription',
      desc: '',
      args: [],
    );
  }

  /// `Самовывоз или в заведении`
  String get settingsDeliveryMethodPickup {
    return Intl.message(
      'Самовывоз или в заведении',
      name: 'settingsDeliveryMethodPickup',
      desc: '',
      args: [],
    );
  }

  /// `До адреса`
  String get settingsDeliveryMethodToAddress {
    return Intl.message(
      'До адреса',
      name: 'settingsDeliveryMethodToAddress',
      desc: '',
      args: [],
    );
  }

  /// `Адрес`
  String get address {
    return Intl.message(
      'Адрес',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Страна`
  String get country {
    return Intl.message(
      'Страна',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Город`
  String get city {
    return Intl.message(
      'Город',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Улица`
  String get street {
    return Intl.message(
      'Улица',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Точка на карте`
  String get pointOnMap {
    return Intl.message(
      'Точка на карте',
      name: 'pointOnMap',
      desc: '',
      args: [],
    );
  }

  /// `Создать новое место`
  String get createNewPlace {
    return Intl.message(
      'Создать новое место',
      name: 'createNewPlace',
      desc: '',
      args: [],
    );
  }

  /// `Редактирование`
  String get editing {
    return Intl.message(
      'Редактирование',
      name: 'editing',
      desc: '',
      args: [],
    );
  }

  /// `Номер/блок`
  String get settingsDeliveryAddressHouseHint {
    return Intl.message(
      'Номер/блок',
      name: 'settingsDeliveryAddressHouseHint',
      desc: '',
      args: [],
    );
  }

  /// `Дом`
  String get house {
    return Intl.message(
      'Дом',
      name: 'house',
      desc: '',
      args: [],
    );
  }

  /// `Офис`
  String get office {
    return Intl.message(
      'Офис',
      name: 'office',
      desc: '',
      args: [],
    );
  }

  /// `Номер`
  String get number {
    return Intl.message(
      'Номер',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Способы оплаты`
  String get settingsPaymentHeader {
    return Intl.message(
      'Способы оплаты',
      name: 'settingsPaymentHeader',
      desc: '',
      args: [],
    );
  }

  /// `ВЫБЕРИТЕ СПОСОБ ОПЛАТЫ`
  String get settingsPaymentHeaderDescription {
    return Intl.message(
      'ВЫБЕРИТЕ СПОСОБ ОПЛАТЫ',
      name: 'settingsPaymentHeaderDescription',
      desc: '',
      args: [],
    );
  }

  /// `Способ оплаты`
  String get settingsTransactionsPaymentMethod {
    return Intl.message(
      'Способ оплаты',
      name: 'settingsTransactionsPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get settingsLogoViewStoreName {
    return Intl.message(
      'Название',
      name: 'settingsLogoViewStoreName',
      desc: '',
      args: [],
    );
  }

  /// `ЛОГОТИП МАГАЗИНА`
  String get settingsLogoViewHeader {
    return Intl.message(
      'ЛОГОТИП МАГАЗИНА',
      name: 'settingsLogoViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Код магазина`
  String get settingsLogoViewStoreCode {
    return Intl.message(
      'Код магазина',
      name: 'settingsLogoViewStoreCode',
      desc: '',
      args: [],
    );
  }

  /// `Название места выдачи заказа`
  String get settingsDeliveryPickupOptionName {
    return Intl.message(
      'Название места выдачи заказа',
      name: 'settingsDeliveryPickupOptionName',
      desc: '',
      args: [],
    );
  }

  /// `Новое место`
  String get settingsDeliveryPickupOptionNewPlaceHeader {
    return Intl.message(
      'Новое место',
      name: 'settingsDeliveryPickupOptionNewPlaceHeader',
      desc: '',
      args: [],
    );
  }

  /// `Укажите улицу`
  String get settingsDeliveryAddressStreetHint {
    return Intl.message(
      'Укажите улицу',
      name: 'settingsDeliveryAddressStreetHint',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий`
  String get settingsDeliveryAddressComment {
    return Intl.message(
      'Комментарий',
      name: 'settingsDeliveryAddressComment',
      desc: '',
      args: [],
    );
  }

  /// `Введите примечание`
  String get settingsDeliveryAddressCommentHint {
    return Intl.message(
      'Введите примечание',
      name: 'settingsDeliveryAddressCommentHint',
      desc: '',
      args: [],
    );
  }

  /// `До города`
  String get settingsDeliveryMethodToCity {
    return Intl.message(
      'До города',
      name: 'settingsDeliveryMethodToCity',
      desc: '',
      args: [],
    );
  }

  /// `Валюта`
  String get currency {
    return Intl.message(
      'Валюта',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Языки`
  String get languages {
    return Intl.message(
      'Языки',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Количество`
  String get quantity {
    return Intl.message(
      'Количество',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий к заказу`
  String get ordersOrderComments {
    return Intl.message(
      'Комментарий к заказу',
      name: 'ordersOrderComments',
      desc: '',
      args: [],
    );
  }

  /// `Заметка о клиенте`
  String get ordersNoteAboutClient {
    return Intl.message(
      'Заметка о клиенте',
      name: 'ordersNoteAboutClient',
      desc: '',
      args: [],
    );
  }

  /// `Сумма заказа`
  String get ordersOrderSum {
    return Intl.message(
      'Сумма заказа',
      name: 'ordersOrderSum',
      desc: '',
      args: [],
    );
  }

  /// `Подтвердить`
  String get ordersConfirm {
    return Intl.message(
      'Подтвердить',
      name: 'ordersConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Цена покупки `
  String get ordersPurschasePrice {
    return Intl.message(
      'Цена покупки ',
      name: 'ordersPurschasePrice',
      desc: '',
      args: [],
    );
  }

  /// `Штрих-код `
  String get ordersBarcode {
    return Intl.message(
      'Штрих-код ',
      name: 'ordersBarcode',
      desc: '',
      args: [],
    );
  }

  /// `Предложение: `
  String get ordersOffer {
    return Intl.message(
      'Предложение: ',
      name: 'ordersOffer',
      desc: '',
      args: [],
    );
  }

  /// `О клиенте и заказе`
  String get ordersPopupAboutClientAndOrder {
    return Intl.message(
      'О клиенте и заказе',
      name: 'ordersPopupAboutClientAndOrder',
      desc: '',
      args: [],
    );
  }

  /// `Отменить заказ`
  String get ordersPopupCancelOrder {
    return Intl.message(
      'Отменить заказ',
      name: 'ordersPopupCancelOrder',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение`
  String get ordersConfirmation {
    return Intl.message(
      'Подтверждение',
      name: 'ordersConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `Цена продажи `
  String get ordersSellPrice {
    return Intl.message(
      'Цена продажи ',
      name: 'ordersSellPrice',
      desc: '',
      args: [],
    );
  }

  /// `Продолжить`
  String get proceed {
    return Intl.message(
      'Продолжить',
      name: 'proceed',
      desc: '',
      args: [],
    );
  }

  /// `Основная страна продаж`
  String get mainSalesCountry {
    return Intl.message(
      'Основная страна продаж',
      name: 'mainSalesCountry',
      desc: '',
      args: [],
    );
  }

  /// `Основной язык для работы`
  String get mainSalesLanguage {
    return Intl.message(
      'Основной язык для работы',
      name: 'mainSalesLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Выберите страну, где находится ваша компания. Доставка может быть международной.`
  String get defaultSalesCountryDescription {
    return Intl.message(
      'Выберите страну, где находится ваша компания. Доставка может быть международной.',
      name: 'defaultSalesCountryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Выберите язык для работы с каталогом. Перевод на другие языки будет автоматическим.`
  String get defaultSalesLanguageDescription {
    return Intl.message(
      'Выберите язык для работы с каталогом. Перевод на другие языки будет автоматическим.',
      name: 'defaultSalesLanguageDescription',
      desc: '',
      args: [],
    );
  }

  /// `Выберите страну`
  String get choose_country {
    return Intl.message(
      'Выберите страну',
      name: 'choose_country',
      desc: '',
      args: [],
    );
  }

  /// `Выберите страны`
  String get choose_countries {
    return Intl.message(
      'Выберите страны',
      name: 'choose_countries',
      desc: '',
      args: [],
    );
  }

  /// `Выберите город`
  String get choose_city {
    return Intl.message(
      'Выберите город',
      name: 'choose_city',
      desc: '',
      args: [],
    );
  }

  /// `Выберите города`
  String get choose_cities {
    return Intl.message(
      'Выберите города',
      name: 'choose_cities',
      desc: '',
      args: [],
    );
  }

  /// `Выберите регионы`
  String get choose_regions {
    return Intl.message(
      'Выберите регионы',
      name: 'choose_regions',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Не нашли страну?`
  String get country_not_found {
    return Intl.message(
      'Не нашли страну?',
      name: 'country_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Не нашли город?`
  String get city_not_found {
    return Intl.message(
      'Не нашли город?',
      name: 'city_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Основной язык`
  String get mainLanguage {
    return Intl.message(
      'Основной язык',
      name: 'mainLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Товары`
  String get products {
    return Intl.message(
      'Товары',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Цена продажи`
  String get sellingPrice {
    return Intl.message(
      'Цена продажи',
      name: 'sellingPrice',
      desc: '',
      args: [],
    );
  }

  /// `Введите описание`
  String get productDescriptionHint {
    return Intl.message(
      'Введите описание',
      name: 'productDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Ваш магазин готов к работе!`
  String get yourStoreReady {
    return Intl.message(
      'Ваш магазин готов к работе!',
      name: 'yourStoreReady',
      desc: '',
      args: [],
    );
  }

  /// `Мы создали для вас магазин, и он уже\n доступен на iOS и Android`
  String get weCreatedYourStore {
    return Intl.message(
      'Мы создали для вас магазин, и он уже\n доступен на iOS и Android',
      name: 'weCreatedYourStore',
      desc: '',
      args: [],
    );
  }

  /// `Есть вопросы?`
  String get haveQuestions {
    return Intl.message(
      'Есть вопросы?',
      name: 'haveQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Напишите нам - поможем`
  String get writeUs {
    return Intl.message(
      'Напишите нам - поможем',
      name: 'writeUs',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные`
  String get settingsLanguageViewAdditionalHeader {
    return Intl.message(
      'Дополнительные',
      name: 'settingsLanguageViewAdditionalHeader',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные языки`
  String get settingsLanguageViewAdditionalLanguages {
    return Intl.message(
      'Дополнительные языки',
      name: 'settingsLanguageViewAdditionalLanguages',
      desc: '',
      args: [],
    );
  }

  /// `Рекомендуем`
  String get recommended {
    return Intl.message(
      'Рекомендуем',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get done {
    return Intl.message(
      'Готово',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Редактировать`
  String get edit {
    return Intl.message(
      'Редактировать',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get exit {
    return Intl.message(
      'Выйти',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Необходимо собрать все товары`
  String get collectAllProducts {
    return Intl.message(
      'Необходимо собрать все товары',
      name: 'collectAllProducts',
      desc: '',
      args: [],
    );
  }

  /// `Не все товары собраны`
  String get notAllProductsCollected {
    return Intl.message(
      'Не все товары собраны',
      name: 'notAllProductsCollected',
      desc: '',
      args: [],
    );
  }

  /// `Все`
  String get all {
    return Intl.message(
      'Все',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `В наличии`
  String get inStock {
    return Intl.message(
      'В наличии',
      name: 'inStock',
      desc: '',
      args: [],
    );
  }

  /// `Отсутствует`
  String get outOfStock {
    return Intl.message(
      'Отсутствует',
      name: 'outOfStock',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get productStatus {
    return Intl.message(
      'Статус',
      name: 'productStatus',
      desc: '',
      args: [],
    );
  }

  /// `Создание магазина`
  String get createStore {
    return Intl.message(
      'Создание магазина',
      name: 'createStore',
      desc: '',
      args: [],
    );
  }

  /// `Перейти в магазин`
  String get storeReadyCardActionOpenStore {
    return Intl.message(
      'Перейти в магазин',
      name: 'storeReadyCardActionOpenStore',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться ссылкой`
  String get storeReadyCardActionCopyStoreUrl {
    return Intl.message(
      'Поделиться ссылкой',
      name: 'storeReadyCardActionCopyStoreUrl',
      desc: '',
      args: [],
    );
  }

  /// `Показать QR-код`
  String get storeReadyCardActionOpenQR {
    return Intl.message(
      'Показать QR-код',
      name: 'storeReadyCardActionOpenQR',
      desc: '',
      args: [],
    );
  }

  /// `Информация`
  String get settingsAboutHeader {
    return Intl.message(
      'Информация',
      name: 'settingsAboutHeader',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные настройки`
  String get settingsAdditionalSettingsHeader {
    return Intl.message(
      'Дополнительные настройки',
      name: 'settingsAdditionalSettingsHeader',
      desc: '',
      args: [],
    );
  }

  /// `Краткое описание (макс. {maxSymbol} символов)`
  String settingsViewStoreDescription(Object maxSymbol) {
    return Intl.message(
      'Краткое описание (макс. $maxSymbol символов)',
      name: 'settingsViewStoreDescription',
      desc: '',
      args: [maxSymbol],
    );
  }

  /// `Введите краткое описание`
  String get settingsViewStoreDescriptionHint {
    return Intl.message(
      'Введите краткое описание',
      name: 'settingsViewStoreDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Дизайн`
  String get settingsCatalogDesignHeader {
    return Intl.message(
      'Дизайн',
      name: 'settingsCatalogDesignHeader',
      desc: '',
      args: [],
    );
  }

  /// `Внешний вид`
  String get settingsCatalogDesignSubtitle {
    return Intl.message(
      'Внешний вид',
      name: 'settingsCatalogDesignSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Не оплачено`
  String get ordersPaymentStatusNotPaid {
    return Intl.message(
      'Не оплачено',
      name: 'ordersPaymentStatusNotPaid',
      desc: '',
      args: [],
    );
  }

  /// `Больше суммы заказа`
  String get ordersSumsMore {
    return Intl.message(
      'Больше суммы заказа',
      name: 'ordersSumsMore',
      desc: '',
      args: [],
    );
  }

  /// `Контакты`
  String get contacts {
    return Intl.message(
      'Контакты',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Не задан`
  String get notSet {
    return Intl.message(
      'Не задан',
      name: 'notSet',
      desc: '',
      args: [],
    );
  }

  /// `Создать инфораздел`
  String get createInfoSectionButtonTitle {
    return Intl.message(
      'Создать инфораздел',
      name: 'createInfoSectionButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Новый инфораздел`
  String get newInfoSection {
    return Intl.message(
      'Новый инфораздел',
      name: 'newInfoSection',
      desc: '',
      args: [],
    );
  }

  /// `Раздел`
  String get chapterHeader {
    return Intl.message(
      'Раздел',
      name: 'chapterHeader',
      desc: '',
      args: [],
    );
  }

  /// `Описание`
  String get description {
    return Intl.message(
      'Описание',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Телефон`
  String get telephone {
    return Intl.message(
      'Телефон',
      name: 'telephone',
      desc: '',
      args: [],
    );
  }

  /// `Создать контакт`
  String get createContact {
    return Intl.message(
      'Создать контакт',
      name: 'createContact',
      desc: '',
      args: [],
    );
  }

  /// `Политика конфиденциальности`
  String get privacyPolicy {
    return Intl.message(
      'Политика конфиденциальности',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Введите описание компании`
  String get enterCompanyDescription {
    return Intl.message(
      'Введите описание компании',
      name: 'enterCompanyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Наименование`
  String get name {
    return Intl.message(
      'Наименование',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `URL страницы`
  String get URLPages {
    return Intl.message(
      'URL страницы',
      name: 'URLPages',
      desc: '',
      args: [],
    );
  }

  /// `Дисклеймер`
  String get disclaimer {
    return Intl.message(
      'Дисклеймер',
      name: 'disclaimer',
      desc: '',
      args: [],
    );
  }

  /// `Введите наименование`
  String get enterName {
    return Intl.message(
      'Введите наименование',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Введите телефон`
  String get enterTelephone {
    return Intl.message(
      'Введите телефон',
      name: 'enterTelephone',
      desc: '',
      args: [],
    );
  }

  /// `Исключено`
  String get ordersCardItemStateExcluded {
    return Intl.message(
      'Исключено',
      name: 'ordersCardItemStateExcluded',
      desc: '',
      args: [],
    );
  }

  /// `Исключить`
  String get ordersCardItemStateExclude {
    return Intl.message(
      'Исключить',
      name: 'ordersCardItemStateExclude',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона магазина`
  String get storeYourPhoneNumber {
    return Intl.message(
      'Номер телефона магазина',
      name: 'storeYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Укажите страну, язык и телефон`
  String get storeSpecifyCountryLanguageAndTelephone {
    return Intl.message(
      'Укажите страну, язык и телефон',
      name: 'storeSpecifyCountryLanguageAndTelephone',
      desc: '',
      args: [],
    );
  }

  /// `Выберите тип приложения`
  String get storeSelectApplicationType {
    return Intl.message(
      'Выберите тип приложения',
      name: 'storeSelectApplicationType',
      desc: '',
      args: [],
    );
  }

  /// `Магазины`
  String get storesListTitle {
    return Intl.message(
      'Магазины',
      name: 'storesListTitle',
      desc: '',
      args: [],
    );
  }

  /// `Активные`
  String get storesListActiveButtonTitle {
    return Intl.message(
      'Активные',
      name: 'storesListActiveButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Неактивные`
  String get storesListInactiveButtonTitle {
    return Intl.message(
      'Неактивные',
      name: 'storesListInactiveButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Выход`
  String get userLogoutPopupTitle {
    return Intl.message(
      'Выход',
      name: 'userLogoutPopupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите выйти?`
  String get userLogoutPopupContent {
    return Intl.message(
      'Вы уверены, что хотите выйти?',
      name: 'userLogoutPopupContent',
      desc: '',
      args: [],
    );
  }

  /// `Переместить в "Собрать"`
  String get ordersCardItemStateMoveToCollect {
    return Intl.message(
      'Переместить в "Собрать"',
      name: 'ordersCardItemStateMoveToCollect',
      desc: '',
      args: [],
    );
  }

  /// `Контактный телефон`
  String get ordersClientContactPhoneNumber {
    return Intl.message(
      'Контактный телефон',
      name: 'ordersClientContactPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Основной телефон`
  String get ordersClientMainPhoneNumber {
    return Intl.message(
      'Основной телефон',
      name: 'ordersClientMainPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Позвонить`
  String get ordersClientCallTheNumber {
    return Intl.message(
      'Позвонить',
      name: 'ordersClientCallTheNumber',
      desc: '',
      args: [],
    );
  }

  /// `Копировать`
  String get copy {
    return Intl.message(
      'Копировать',
      name: 'copy',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get WhatsApp {
    return Intl.message(
      'WhatsApp',
      name: 'WhatsApp',
      desc: '',
      args: [],
    );
  }

  /// `Оплата заказа`
  String get ordersClientPaymentForOrder {
    return Intl.message(
      'Оплата заказа',
      name: 'ordersClientPaymentForOrder',
      desc: '',
      args: [],
    );
  }

  /// `Введите`
  String get settingsPaymentSystemUpdateHint {
    return Intl.message(
      'Введите',
      name: 'settingsPaymentSystemUpdateHint',
      desc: '',
      args: [],
    );
  }

  /// `Для перехода заказа в следующий статус в нем должны быть собранные товары`
  String get orderCompositionViewCollectAllProducts {
    return Intl.message(
      'Для перехода заказа в следующий статус в нем должны быть собранные товары',
      name: 'orderCompositionViewCollectAllProducts',
      desc: '',
      args: [],
    );
  }

  /// `Все товары исключены`
  String get orderCompositionViewNotAllProductsCollected {
    return Intl.message(
      'Все товары исключены',
      name: 'orderCompositionViewNotAllProductsCollected',
      desc: '',
      args: [],
    );
  }

  /// `Номер заказа`
  String get orderNumber {
    return Intl.message(
      'Номер заказа',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Заголовок`
  String get contactsViewMakeText {
    return Intl.message(
      'Заголовок',
      name: 'contactsViewMakeText',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `URL`
  String get url {
    return Intl.message(
      'URL',
      name: 'url',
      desc: '',
      args: [],
    );
  }

  /// `Нет оплаты`
  String get mustBePayedDialogTitle {
    return Intl.message(
      'Нет оплаты',
      name: 'mustBePayedDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Заказ должен быть оплачен`
  String get mustBePayedDialogContent {
    return Intl.message(
      'Заказ должен быть оплачен',
      name: 'mustBePayedDialogContent',
      desc: '',
      args: [],
    );
  }

  /// `Удалить способ оплаты`
  String get deletePaymentMethod {
    return Intl.message(
      'Удалить способ оплаты',
      name: 'deletePaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость товаров`
  String get productsPrice {
    return Intl.message(
      'Стоимость товаров',
      name: 'productsPrice',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость доставки`
  String get deliveryPrice {
    return Intl.message(
      'Стоимость доставки',
      name: 'deliveryPrice',
      desc: '',
      args: [],
    );
  }

  /// `Минимальная сумма заказа`
  String get additionalSettingsMinimumOrderAmountHeader {
    return Intl.message(
      'Минимальная сумма заказа',
      name: 'additionalSettingsMinimumOrderAmountHeader',
      desc: '',
      args: [],
    );
  }

  /// `Сумма`
  String get settingsMinimumOrderOrderSum {
    return Intl.message(
      'Сумма',
      name: 'settingsMinimumOrderOrderSum',
      desc: '',
      args: [],
    );
  }

  /// `Полезная информация`
  String get helpViewUsefulInformation {
    return Intl.message(
      'Полезная информация',
      name: 'helpViewUsefulInformation',
      desc: '',
      args: [],
    );
  }

  /// `Добавить товар`
  String get ordersPopupAddProduct {
    return Intl.message(
      'Добавить товар',
      name: 'ordersPopupAddProduct',
      desc: '',
      args: [],
    );
  }

  /// `Предложение`
  String get offersListHeader {
    return Intl.message(
      'Предложение',
      name: 'offersListHeader',
      desc: '',
      args: [],
    );
  }

  /// `от`
  String get findProductFrom {
    return Intl.message(
      'от',
      name: 'findProductFrom',
      desc: '',
      args: [],
    );
  }

  /// `Скрыть`
  String get hide {
    return Intl.message(
      'Скрыть',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Новый товар`
  String get goodsViewNewProductTitle {
    return Intl.message(
      'Новый товар',
      name: 'goodsViewNewProductTitle',
      desc: '',
      args: [],
    );
  }

  /// `Есть`
  String get leafCardChipThereIs {
    return Intl.message(
      'Есть',
      name: 'leafCardChipThereIs',
      desc: '',
      args: [],
    );
  }

  /// `Нет`
  String get no {
    return Intl.message(
      'Нет',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `История импорта`
  String get importHistory {
    return Intl.message(
      'История импорта',
      name: 'importHistory',
      desc: '',
      args: [],
    );
  }

  /// `Изменить`
  String get productItemEdit {
    return Intl.message(
      'Изменить',
      name: 'productItemEdit',
      desc: '',
      args: [],
    );
  }

  /// `Клонировать`
  String get clone {
    return Intl.message(
      'Клонировать',
      name: 'clone',
      desc: '',
      args: [],
    );
  }

  /// `Фото разных товаров`
  String get productPhotoDifferentProducts {
    return Intl.message(
      'Фото разных товаров',
      name: 'productPhotoDifferentProducts',
      desc: '',
      args: [],
    );
  }

  /// `Фото одного товара`
  String get productPhotoSingleProduct {
    return Intl.message(
      'Фото одного товара',
      name: 'productPhotoSingleProduct',
      desc: '',
      args: [],
    );
  }

  /// `Введите цену`
  String get productEnterPrice {
    return Intl.message(
      'Введите цену',
      name: 'productEnterPrice',
      desc: '',
      args: [],
    );
  }

  /// `Необработанные изменения`
  String get productUnprocessedChanges {
    return Intl.message(
      'Необработанные изменения',
      name: 'productUnprocessedChanges',
      desc: '',
      args: [],
    );
  }

  /// `Повторить попытку`
  String get productErrorTryAgain {
    return Intl.message(
      'Повторить попытку',
      name: 'productErrorTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Роли`
  String get settingsRolesHeader {
    return Intl.message(
      'Роли',
      name: 'settingsRolesHeader',
      desc: '',
      args: [],
    );
  }

  /// `Создать роль`
  String get settingsRolesAddNewRole {
    return Intl.message(
      'Создать роль',
      name: 'settingsRolesAddNewRole',
      desc: '',
      args: [],
    );
  }

  /// `Права`
  String get settingsRolesRoleRights {
    return Intl.message(
      'Права',
      name: 'settingsRolesRoleRights',
      desc: '',
      args: [],
    );
  }

  /// `Пригласить`
  String get settingsRolesRoleViewInviteButton {
    return Intl.message(
      'Пригласить',
      name: 'settingsRolesRoleViewInviteButton',
      desc: '',
      args: [],
    );
  }

  /// `Введите название роли`
  String get settingsRolesAddNewRoleNameHint {
    return Intl.message(
      'Введите название роли',
      name: 'settingsRolesAddNewRoleNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Название роли`
  String get settingsRolesAddNewRoleNameLabel {
    return Intl.message(
      'Название роли',
      name: 'settingsRolesAddNewRoleNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Приложение создано и работает!`
  String get helpViewAppIsReady {
    return Intl.message(
      'Приложение создано и работает!',
      name: 'helpViewAppIsReady',
      desc: '',
      args: [],
    );
  }

  /// `Старт`
  String get importHistoryViewStart {
    return Intl.message(
      'Старт',
      name: 'importHistoryViewStart',
      desc: '',
      args: [],
    );
  }

  /// `Обновление .xml`
  String get importHistoryViewUpdateXML {
    return Intl.message(
      'Обновление .xml',
      name: 'importHistoryViewUpdateXML',
      desc: '',
      args: [],
    );
  }

  /// `Скачать .xml`
  String get importHistoryViewDownloadXMLButton {
    return Intl.message(
      'Скачать .xml',
      name: 'importHistoryViewDownloadXMLButton',
      desc: '',
      args: [],
    );
  }

  /// `Удалить все`
  String get productItemDeleteAllErrors {
    return Intl.message(
      'Удалить все',
      name: 'productItemDeleteAllErrors',
      desc: '',
      args: [],
    );
  }

  /// `Настройки сохранены`
  String get settingsIntegrationAlertTitle {
    return Intl.message(
      'Настройки сохранены',
      name: 'settingsIntegrationAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Началась обработка файла. Следите за изменениями в каталоге.`
  String get settingsIntegrationAlertContent {
    return Intl.message(
      'Началась обработка файла. Следите за изменениями в каталоге.',
      name: 'settingsIntegrationAlertContent',
      desc: '',
      args: [],
    );
  }

  /// `Отображаемое значение`
  String get settingsContactUrlDisplayedValue {
    return Intl.message(
      'Отображаемое значение',
      name: 'settingsContactUrlDisplayedValue',
      desc: '',
      args: [],
    );
  }

  /// `Основные настройки`
  String get settingsBasicSettingsHeader {
    return Intl.message(
      'Основные настройки',
      name: 'settingsBasicSettingsHeader',
      desc: '',
      args: [],
    );
  }

  /// `Способы доставки`
  String get settingsDeliveryMethodsHeader {
    return Intl.message(
      'Способы доставки',
      name: 'settingsDeliveryMethodsHeader',
      desc: '',
      args: [],
    );
  }

  /// `Информация о компании`
  String get settingsInformationCompanyHeader {
    return Intl.message(
      'Информация о компании',
      name: 'settingsInformationCompanyHeader',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены?`
  String get alertDeleteDialogTitle {
    return Intl.message(
      'Вы уверены?',
      name: 'alertDeleteDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Камера`
  String get importProductPhotoFromCamera {
    return Intl.message(
      'Камера',
      name: 'importProductPhotoFromCamera',
      desc: '',
      args: [],
    );
  }

  /// `Галерея`
  String get importProductPhotoFromGallery {
    return Intl.message(
      'Галерея',
      name: 'importProductPhotoFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Виджет на сайт`
  String get settingsIntegrationWidgetForWebsiteTitle {
    return Intl.message(
      'Виджет на сайт',
      name: 'settingsIntegrationWidgetForWebsiteTitle',
      desc: '',
      args: [],
    );
  }

  /// `Аналитика`
  String get settingsReportsViewTitle {
    return Intl.message(
      'Аналитика',
      name: 'settingsReportsViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Брошенные корзины`
  String get settingsReportsViewAbandonedCartsTitle {
    return Intl.message(
      'Брошенные корзины',
      name: 'settingsReportsViewAbandonedCartsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Фильтрация`
  String get filterViewFiltration {
    return Intl.message(
      'Фильтрация',
      name: 'filterViewFiltration',
      desc: '',
      args: [],
    );
  }

  /// `Сортировка`
  String get filterViewSorting {
    return Intl.message(
      'Сортировка',
      name: 'filterViewSorting',
      desc: '',
      args: [],
    );
  }

  /// `Сначала дешевые`
  String get filterViewCheapFirst {
    return Intl.message(
      'Сначала дешевые',
      name: 'filterViewCheapFirst',
      desc: '',
      args: [],
    );
  }

  /// `Сначала дорогие`
  String get filterViewDearOnesFirst {
    return Intl.message(
      'Сначала дорогие',
      name: 'filterViewDearOnesFirst',
      desc: '',
      args: [],
    );
  }

  /// `Сначала новые`
  String get filterViewNewOnesFirst {
    return Intl.message(
      'Сначала новые',
      name: 'filterViewNewOnesFirst',
      desc: '',
      args: [],
    );
  }

  /// `По популярности`
  String get filterViewPopularity {
    return Intl.message(
      'По популярности',
      name: 'filterViewPopularity',
      desc: '',
      args: [],
    );
  }

  /// `По размеру скидки`
  String get filterViewByDiscountAmount {
    return Intl.message(
      'По размеру скидки',
      name: 'filterViewByDiscountAmount',
      desc: '',
      args: [],
    );
  }

  /// `Показать результаты`
  String get filterViewShowResultsButton {
    return Intl.message(
      'Показать результаты',
      name: 'filterViewShowResultsButton',
      desc: '',
      args: [],
    );
  }

  /// `Интервалы доставки`
  String get settingsDeliveryViewDeliveryIntervals {
    return Intl.message(
      'Интервалы доставки',
      name: 'settingsDeliveryViewDeliveryIntervals',
      desc: '',
      args: [],
    );
  }

  /// `Промо-баннеры`
  String get additionalSettingsViewPromoBannersTitle {
    return Intl.message(
      'Промо-баннеры',
      name: 'additionalSettingsViewPromoBannersTitle',
      desc: '',
      args: [],
    );
  }

  /// `Фильтр`
  String get filterViewHeader {
    return Intl.message(
      'Фильтр',
      name: 'filterViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Без наименования`
  String get orderNoNameTitle {
    return Intl.message(
      'Без наименования',
      name: 'orderNoNameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Сбросить`
  String get productsFiltersReset {
    return Intl.message(
      'Сбросить',
      name: 'productsFiltersReset',
      desc: '',
      args: [],
    );
  }

  /// `Активность:`
  String get settingsDeliveryIntegralsActivation {
    return Intl.message(
      'Активность:',
      name: 'settingsDeliveryIntegralsActivation',
      desc: '',
      args: [],
    );
  }

  /// `Создать интервал`
  String get settingsDeliveryIntegralsCreateIntervalButton {
    return Intl.message(
      'Создать интервал',
      name: 'settingsDeliveryIntegralsCreateIntervalButton',
      desc: '',
      args: [],
    );
  }

  /// `Задайте временной интервал`
  String get deliveryIntegralsSetTimeInterval {
    return Intl.message(
      'Задайте временной интервал',
      name: 'deliveryIntegralsSetTimeInterval',
      desc: '',
      args: [],
    );
  }

  /// `Часовой пояс`
  String get deliveryTimezoneViewHeader {
    return Intl.message(
      'Часовой пояс',
      name: 'deliveryTimezoneViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Выберите часовой пояс`
  String get deliveryTimezoneChooseYourTimezone {
    return Intl.message(
      'Выберите часовой пояс',
      name: 'deliveryTimezoneChooseYourTimezone',
      desc: '',
      args: [],
    );
  }

  /// `интервалов`
  String get settingsDeliveryIntervalsViewIntervals {
    return Intl.message(
      'интервалов',
      name: 'settingsDeliveryIntervalsViewIntervals',
      desc: '',
      args: [],
    );
  }

  /// `Основной и дополнительный`
  String get settingsLogosViewLanguagesPrimaryAndSecondary {
    return Intl.message(
      'Основной и дополнительный',
      name: 'settingsLogosViewLanguagesPrimaryAndSecondary',
      desc: '',
      args: [],
    );
  }

  /// `Свойства товаров`
  String get additionalSettingsViewProductPropertiesTitle {
    return Intl.message(
      'Свойства товаров',
      name: 'additionalSettingsViewProductPropertiesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Категории товаров`
  String get additionalSettingsViewProductCategoriesTitle {
    return Intl.message(
      'Категории товаров',
      name: 'additionalSettingsViewProductCategoriesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get bottomBarTextLaunch {
    return Intl.message(
      'Главная',
      name: 'bottomBarTextLaunch',
      desc: '',
      args: [],
    );
  }

  /// `Ваши приложения`
  String get helpViewYourApplications {
    return Intl.message(
      'Ваши приложения',
      name: 'helpViewYourApplications',
      desc: '',
      args: [],
    );
  }

  /// `Оно открывается по ссылке. Поделитесь им с клиентами.`
  String get helpViewAppIsReadySubtitle {
    return Intl.message(
      'Оно открывается по ссылке. Поделитесь им с клиентами.',
      name: 'helpViewAppIsReadySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Нет брошенных корзин`
  String get NoAbandonedCartsTitle {
    return Intl.message(
      'Нет брошенных корзин',
      name: 'NoAbandonedCartsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Вы сможете их увидеть, когда клиенты будут складывать товары в корзину`
  String get NoAbandonedCartsSubTitle {
    return Intl.message(
      'Вы сможете их увидеть, когда клиенты будут складывать товары в корзину',
      name: 'NoAbandonedCartsSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Структура каталога`
  String get directoryStructureViewHeader {
    return Intl.message(
      'Структура каталога',
      name: 'directoryStructureViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Создать категорию`
  String get directoryStructureViewCreateCategoryButton {
    return Intl.message(
      'Создать категорию',
      name: 'directoryStructureViewCreateCategoryButton',
      desc: '',
      args: [],
    );
  }

  /// `Новая категория`
  String get directoryNewCategoryViewHeader {
    return Intl.message(
      'Новая категория',
      name: 'directoryNewCategoryViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `категории`
  String get directoryNewCategoryViewCategory {
    return Intl.message(
      'категории',
      name: 'directoryNewCategoryViewCategory',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get newCategoryName {
    return Intl.message(
      'Имя',
      name: 'newCategoryName',
      desc: '',
      args: [],
    );
  }

  /// `Введите имя категории`
  String get newCategoryEnterCategoryName {
    return Intl.message(
      'Введите имя категории',
      name: 'newCategoryEnterCategoryName',
      desc: '',
      args: [],
    );
  }

  /// `Автоматический выбор товаров`
  String get newCategoryAutomaticProductSelection {
    return Intl.message(
      'Автоматический выбор товаров',
      name: 'newCategoryAutomaticProductSelection',
      desc: '',
      args: [],
    );
  }

  /// `Добавить товары в категорию`
  String get categoryAddProductsToCategoryButton {
    return Intl.message(
      'Добавить товары в категорию',
      name: 'categoryAddProductsToCategoryButton',
      desc: '',
      args: [],
    );
  }

  /// `Выбор товара`
  String get productSelectionViewHeader {
    return Intl.message(
      'Выбор товара',
      name: 'productSelectionViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Счет не выставлен`
  String get paymentSystemAccountNotIssued {
    return Intl.message(
      'Счет не выставлен',
      name: 'paymentSystemAccountNotIssued',
      desc: '',
      args: [],
    );
  }

  /// `Счет выставлен`
  String get paymentSystemInvoiced {
    return Intl.message(
      'Счет выставлен',
      name: 'paymentSystemInvoiced',
      desc: '',
      args: [],
    );
  }

  /// `Клиент сообщил об оплате`
  String get paymentSystemCustomerReportedPayment {
    return Intl.message(
      'Клиент сообщил об оплате',
      name: 'paymentSystemCustomerReportedPayment',
      desc: '',
      args: [],
    );
  }

  /// `Выставить счет`
  String get paymentSystemBillHeader {
    return Intl.message(
      'Выставить счет',
      name: 'paymentSystemBillHeader',
      desc: '',
      args: [],
    );
  }

  /// `Отправить счет на оплату`
  String get paymentSystemBillButtonSendInvoiceForPayment {
    return Intl.message(
      'Отправить счет на оплату',
      name: 'paymentSystemBillButtonSendInvoiceForPayment',
      desc: '',
      args: [],
    );
  }

  /// `Отменить счет`
  String get paymentSystemBillButtonCancelAccount {
    return Intl.message(
      'Отменить счет',
      name: 'paymentSystemBillButtonCancelAccount',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка на страницу оплаты`
  String get paymentSystemBillLinkToPaymentPage {
    return Intl.message(
      'Ссылка на страницу оплаты',
      name: 'paymentSystemBillLinkToPaymentPage',
      desc: '',
      args: [],
    );
  }

  /// `Сообщение от клиента`
  String get paymentSystemBillMessageFromTheClient {
    return Intl.message(
      'Сообщение от клиента',
      name: 'paymentSystemBillMessageFromTheClient',
      desc: '',
      args: [],
    );
  }

  /// `Счет отправлен клиенту`
  String get paymentSystemBillInvoiceSentToClient {
    return Intl.message(
      'Счет отправлен клиенту',
      name: 'paymentSystemBillInvoiceSentToClient',
      desc: '',
      args: [],
    );
  }

  /// `Эти товары отображаются на главной странице магазина, если не используются категории.`
  String get directoryStructureNoProductsText {
    return Intl.message(
      'Эти товары отображаются на главной странице магазина, если не используются категории.',
      name: 'directoryStructureNoProductsText',
      desc: '',
      args: [],
    );
  }

  /// `Эти товары нужно переместить в категории для отображения в каталоге.`
  String get directoryStructureYesProductsText {
    return Intl.message(
      'Эти товары нужно переместить в категории для отображения в каталоге.',
      name: 'directoryStructureYesProductsText',
      desc: '',
      args: [],
    );
  }

  /// `Без категории`
  String get directoryStructureViewUncategorized {
    return Intl.message(
      'Без категории',
      name: 'directoryStructureViewUncategorized',
      desc: '',
      args: [],
    );
  }

  /// `Нет товаров в категории`
  String get categoryProductsViewEmptyProducts {
    return Intl.message(
      'Нет товаров в категории',
      name: 'categoryProductsViewEmptyProducts',
      desc: '',
      args: [],
    );
  }

  /// `Категория`
  String get directoryStructureViewCategory {
    return Intl.message(
      'Категория',
      name: 'directoryStructureViewCategory',
      desc: '',
      args: [],
    );
  }

  /// `История изменений`
  String get historyOfChangesHeader {
    return Intl.message(
      'История изменений',
      name: 'historyOfChangesHeader',
      desc: '',
      args: [],
    );
  }

  /// `Не задано`
  String get infoViewNotSet {
    return Intl.message(
      'Не задано',
      name: 'infoViewNotSet',
      desc: '',
      args: [],
    );
  }

  /// `Выкл.`
  String get infoViewOff {
    return Intl.message(
      'Выкл.',
      name: 'infoViewOff',
      desc: '',
      args: [],
    );
  }

  /// `Вкл.`
  String get infoViewOn {
    return Intl.message(
      'Вкл.',
      name: 'infoViewOn',
      desc: '',
      args: [],
    );
  }

  /// `Заказ оплачен.`
  String get orderTileAlertOrderPayed {
    return Intl.message(
      'Заказ оплачен.',
      name: 'orderTileAlertOrderPayed',
      desc: '',
      args: [],
    );
  }

  /// `Клиент сообщил об оплате.`
  String get orderTileAlertCustomerReportedPayment {
    return Intl.message(
      'Клиент сообщил об оплате.',
      name: 'orderTileAlertCustomerReportedPayment',
      desc: '',
      args: [],
    );
  }

  /// `Счет выставлен.`
  String get orderTileAlertAccountPosted {
    return Intl.message(
      'Счет выставлен.',
      name: 'orderTileAlertAccountPosted',
      desc: '',
      args: [],
    );
  }

  /// `Заказ не оплачен.`
  String get orderTileAlertOrderNotPaid {
    return Intl.message(
      'Заказ не оплачен.',
      name: 'orderTileAlertOrderNotPaid',
      desc: '',
      args: [],
    );
  }

  /// `Цена закупки`
  String get createProductViewPurchasePrice {
    return Intl.message(
      'Цена закупки',
      name: 'createProductViewPurchasePrice',
      desc: '',
      args: [],
    );
  }

  /// `Наценка`
  String get productMarkupPrice {
    return Intl.message(
      'Наценка',
      name: 'productMarkupPrice',
      desc: '',
      args: [],
    );
  }

  /// `Прибыль`
  String get productIncomePrice {
    return Intl.message(
      'Прибыль',
      name: 'productIncomePrice',
      desc: '',
      args: [],
    );
  }

  /// `Единица измерения`
  String get ordersQuantityMeasurement {
    return Intl.message(
      'Единица измерения',
      name: 'ordersQuantityMeasurement',
      desc: '',
      args: [],
    );
  }

  /// `Закупочные цены`
  String get settingsProductsPurchasePriceHeader {
    return Intl.message(
      'Закупочные цены',
      name: 'settingsProductsPurchasePriceHeader',
      desc: '',
      args: [],
    );
  }

  /// `Для каждой роли необходимо настроить права для работы с закупочной ценой в каталоге и заказах.`
  String get purchasePriceSettingsYesDescription {
    return Intl.message(
      'Для каждой роли необходимо настроить права для работы с закупочной ценой в каталоге и заказах.',
      name: 'purchasePriceSettingsYesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Магазин работает с закупочными ценами`
  String get purchasePriceSettingsDescription {
    return Intl.message(
      'Магазин работает с закупочными ценами',
      name: 'purchasePriceSettingsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Вид показа каталога`
  String get settingsCategoryViewCategoryView {
    return Intl.message(
      'Вид показа каталога',
      name: 'settingsCategoryViewCategoryView',
      desc: '',
      args: [],
    );
  }

  /// `Категории`
  String get settingsCategoryViewCategory {
    return Intl.message(
      'Категории',
      name: 'settingsCategoryViewCategory',
      desc: '',
      args: [],
    );
  }

  /// `Системные`
  String get productPropertiesViewSystemic {
    return Intl.message(
      'Системные',
      name: 'productPropertiesViewSystemic',
      desc: '',
      args: [],
    );
  }

  /// `Пользовательские`
  String get productPropertiesViewCustom {
    return Intl.message(
      'Пользовательские',
      name: 'productPropertiesViewCustom',
      desc: '',
      args: [],
    );
  }

  /// `товаров`
  String get productPropertiesViewGoods {
    return Intl.message(
      'товаров',
      name: 'productPropertiesViewGoods',
      desc: '',
      args: [],
    );
  }

  /// `Тип`
  String get productPropertiesViewType {
    return Intl.message(
      'Тип',
      name: 'productPropertiesViewType',
      desc: '',
      args: [],
    );
  }

  /// `Значение`
  String get productPropertiesSystemViewMeaning {
    return Intl.message(
      'Значение',
      name: 'productPropertiesSystemViewMeaning',
      desc: '',
      args: [],
    );
  }

  /// `Задано`
  String get productPropertiesSystemViewSet {
    return Intl.message(
      'Задано',
      name: 'productPropertiesSystemViewSet',
      desc: '',
      args: [],
    );
  }

  /// `Создать свойство`
  String get productPropertiesCreateHeader {
    return Intl.message(
      'Создать свойство',
      name: 'productPropertiesCreateHeader',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите удалить свойство? Оно пропадет во всех товарах.`
  String get productPropertiesAlertHeader {
    return Intl.message(
      'Вы уверены, что хотите удалить свойство? Оно пропадет во всех товарах.',
      name: 'productPropertiesAlertHeader',
      desc: '',
      args: [],
    );
  }

  /// `Выберите тип`
  String get createPropertyViewSelectType {
    return Intl.message(
      'Выберите тип',
      name: 'createPropertyViewSelectType',
      desc: '',
      args: [],
    );
  }

  /// `Текст`
  String get createPropertyViewParagraphTitle {
    return Intl.message(
      'Текст',
      name: 'createPropertyViewParagraphTitle',
      desc: '',
      args: [],
    );
  }

  /// `Дробное число`
  String get createPropertyViewDecimalTitle {
    return Intl.message(
      'Дробное число',
      name: 'createPropertyViewDecimalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Дата и время`
  String get createPropertyViewDateTitle {
    return Intl.message(
      'Дата и время',
      name: 'createPropertyViewDateTitle',
      desc: '',
      args: [],
    );
  }

  /// `Да или нет`
  String get createPropertyViewBooleanTitle {
    return Intl.message(
      'Да или нет',
      name: 'createPropertyViewBooleanTitle',
      desc: '',
      args: [],
    );
  }

  /// `Список (выбор одного значения)`
  String get createPropertyViewDropdownTitle {
    return Intl.message(
      'Список (выбор одного значения)',
      name: 'createPropertyViewDropdownTitle',
      desc: '',
      args: [],
    );
  }

  /// `Список (множественный выбор)`
  String get createPropertyViewMultiselectTitle {
    return Intl.message(
      'Список (множественный выбор)',
      name: 'createPropertyViewMultiselectTitle',
      desc: '',
      args: [],
    );
  }

  /// `Цвет (выбор одного значения)`
  String get createPropertyViewColorTitle {
    return Intl.message(
      'Цвет (выбор одного значения)',
      name: 'createPropertyViewColorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Цвет (множественный выбор)`
  String get createPropertyViewMulticolorTitle {
    return Intl.message(
      'Цвет (множественный выбор)',
      name: 'createPropertyViewMulticolorTitle',
      desc: '',
      args: [],
    );
  }

  /// `HEX`
  String get productsPropertyViewBottomSheetHEXText {
    return Intl.message(
      'HEX',
      name: 'productsPropertyViewBottomSheetHEXText',
      desc: '',
      args: [],
    );
  }

  /// `Добавить свойство`
  String get productMoreInfoViewAddPropertyButton {
    return Intl.message(
      'Добавить свойство',
      name: 'productMoreInfoViewAddPropertyButton',
      desc: '',
      args: [],
    );
  }

  /// `Создать свойство можно в настройках магазина`
  String get addProductPropertiesViewDescription {
    return Intl.message(
      'Создать свойство можно в настройках магазина',
      name: 'addProductPropertiesViewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Свойство товара`
  String get productPropertiesViewHeader {
    return Intl.message(
      'Свойство товара',
      name: 'productPropertiesViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Медиагалерея`
  String get createPropertyViewMediaTitle {
    return Intl.message(
      'Медиагалерея',
      name: 'createPropertyViewMediaTitle',
      desc: '',
      args: [],
    );
  }

  /// `Целое число`
  String get createPropertyViewIntegerTitle {
    return Intl.message(
      'Целое число',
      name: 'createPropertyViewIntegerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Короткий текст`
  String get createPropertyViewShortTextTitle {
    return Intl.message(
      'Короткий текст',
      name: 'createPropertyViewShortTextTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ссылка`
  String get createPropertyViewUrlTitle {
    return Intl.message(
      'Ссылка',
      name: 'createPropertyViewUrlTitle',
      desc: '',
      args: [],
    );
  }

  /// `Очистить`
  String get clear {
    return Intl.message(
      'Очистить',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Все предложения`
  String get tradeOffersViewTitle {
    return Intl.message(
      'Все предложения',
      name: 'tradeOffersViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Добавить предложение`
  String get tradeOffersViewCreateValueButtonTitle {
    return Intl.message(
      'Добавить предложение',
      name: 'tradeOffersViewCreateValueButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Сделать основным`
  String get tradeOffersViewSetAsPrimaryButtonTitle {
    return Intl.message(
      'Сделать основным',
      name: 'tradeOffersViewSetAsPrimaryButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Создать значение`
  String get attributeChoiceViewCreateAttributeChoiceTitle {
    return Intl.message(
      'Создать значение',
      name: 'attributeChoiceViewCreateAttributeChoiceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Новое предложение`
  String get addTradeOfferViewTitle {
    return Intl.message(
      'Новое предложение',
      name: 'addTradeOfferViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Создать`
  String get addTradeOfferViewCreateButtonTitle {
    return Intl.message(
      'Создать',
      name: 'addTradeOfferViewCreateButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Выберите свойство`
  String get filterViewSelectAttributes {
    return Intl.message(
      'Выберите свойство',
      name: 'filterViewSelectAttributes',
      desc: '',
      args: [],
    );
  }

  /// `Выбрано`
  String get filterViewSelectedAttributes {
    return Intl.message(
      'Выбрано',
      name: 'filterViewSelectedAttributes',
      desc: '',
      args: [],
    );
  }

  /// `свойства`
  String get filterViewAttributes {
    return Intl.message(
      'свойства',
      name: 'filterViewAttributes',
      desc: '',
      args: [],
    );
  }

  /// `Есть фото`
  String get updateTextFieldViewPhoto {
    return Intl.message(
      'Есть фото',
      name: 'updateTextFieldViewPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Нет фото`
  String get updateTextFieldViewNoPhoto {
    return Intl.message(
      'Нет фото',
      name: 'updateTextFieldViewNoPhoto',
      desc: '',
      args: [],
    );
  }

  /// `От`
  String get updateTextFieldViewPriceFrom {
    return Intl.message(
      'От',
      name: 'updateTextFieldViewPriceFrom',
      desc: '',
      args: [],
    );
  }

  /// `До`
  String get updateTextFieldViewPriceTo {
    return Intl.message(
      'До',
      name: 'updateTextFieldViewPriceTo',
      desc: '',
      args: [],
    );
  }

  /// `предложений`
  String get productMoreInfoViewOffers {
    return Intl.message(
      'предложений',
      name: 'productMoreInfoViewOffers',
      desc: '',
      args: [],
    );
  }

  /// `Торговые предложения`
  String get productMoreInfoViewTradeOffers {
    return Intl.message(
      'Торговые предложения',
      name: 'productMoreInfoViewTradeOffers',
      desc: '',
      args: [],
    );
  }

  /// `Интеграция с CRM`
  String get additionalSettingsIntegrationCRM {
    return Intl.message(
      'Интеграция с CRM',
      name: 'additionalSettingsIntegrationCRM',
      desc: '',
      args: [],
    );
  }

  /// `Интеграция с вебкассой`
  String get additionalSettingsWebIntegration {
    return Intl.message(
      'Интеграция с вебкассой',
      name: 'additionalSettingsWebIntegration',
      desc: '',
      args: [],
    );
  }

  /// `Удаление аккаунта приведет к потере всех связанных с ним данных.`
  String get deleteAccountAlertDialogContent {
    return Intl.message(
      'Удаление аккаунта приведет к потере всех связанных с ним данных.',
      name: 'deleteAccountAlertDialogContent',
      desc: '',
      args: [],
    );
  }

  /// `Удалить аккаунт`
  String get settingsDeleteAccount {
    return Intl.message(
      'Удалить аккаунт',
      name: 'settingsDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать товар`
  String get goodsViewSelectItems {
    return Intl.message(
      'Выбрать товар',
      name: 'goodsViewSelectItems',
      desc: '',
      args: [],
    );
  }

  /// `свойств`
  String get filterViewAttributesMore {
    return Intl.message(
      'свойств',
      name: 'filterViewAttributesMore',
      desc: '',
      args: [],
    );
  }

  /// `свойство`
  String get filterViewAttributesSingle {
    return Intl.message(
      'свойство',
      name: 'filterViewAttributesSingle',
      desc: '',
      args: [],
    );
  }

  /// `Отменить`
  String get goodsViewMultiUpdateCancel {
    return Intl.message(
      'Отменить',
      name: 'goodsViewMultiUpdateCancel',
      desc: '',
      args: [],
    );
  }

  /// `Свойство товаров`
  String get addProductPropertiesViewForMoreProducts {
    return Intl.message(
      'Свойство товаров',
      name: 'addProductPropertiesViewForMoreProducts',
      desc: '',
      args: [],
    );
  }

  /// `Визитка вашего магазина`
  String get settingsViewShopCardTitle {
    return Intl.message(
      'Визитка вашего магазина',
      name: 'settingsViewShopCardTitle',
      desc: '',
      args: [],
    );
  }

  /// `QR-код магазина`
  String get shopQRCodeViewHeader {
    return Intl.message(
      'QR-код магазина',
      name: 'shopQRCodeViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Поделиться`
  String get shopQRCodeViewShareButtonTitle {
    return Intl.message(
      'Поделиться',
      name: 'shopQRCodeViewShareButtonTitle',
      desc: '',
      args: [],
    );
  }

  /// `Войти c Namba One Business`
  String get oNBoardingAgreementLoginToNamba {
    return Intl.message(
      'Войти c Namba One Business',
      name: 'oNBoardingAgreementLoginToNamba',
      desc: '',
      args: [],
    );
  }

  /// `Построить маршрут`
  String get aboutClientAndOrderBuildRouteButton {
    return Intl.message(
      'Построить маршрут',
      name: 'aboutClientAndOrderBuildRouteButton',
      desc: '',
      args: [],
    );
  }

  /// `Ответственность за адрес и точку на карте лежит на клиенте. Сопоставляйте данные перед началом движения.`
  String get aboutClientAndOrderAddressBottomSheetDesc {
    return Intl.message(
      'Ответственность за адрес и точку на карте лежит на клиенте. Сопоставляйте данные перед началом движения.',
      name: 'aboutClientAndOrderAddressBottomSheetDesc',
      desc: '',
      args: [],
    );
  }

  /// `Google Maps`
  String get aboutClientAndOrderAddressBottomSheetGoogleMap {
    return Intl.message(
      'Google Maps',
      name: 'aboutClientAndOrderAddressBottomSheetGoogleMap',
      desc: '',
      args: [],
    );
  }

  /// `Можно распечатать и повесить этот QR код возле входа, для того, чтобы клиенты могли посетить ваш магазин онлайн в любой момент`
  String get shopQRCodeViewDescription {
    return Intl.message(
      'Можно распечатать и повесить этот QR код возле входа, для того, чтобы клиенты могли посетить ваш магазин онлайн в любой момент',
      name: 'shopQRCodeViewDescription',
      desc: '',
      args: [],
    );
  }

  /// `Все доступные свойства в товаре уже используются`
  String get emptyPropertiesDescription {
    return Intl.message(
      'Все доступные свойства в товаре уже используются',
      name: 'emptyPropertiesDescription',
      desc: '',
      args: [],
    );
  }

  /// `Для предложения нет свойств с типом "Выбор одного значения"`
  String get emptyTradeOffersDescription {
    return Intl.message(
      'Для предложения нет свойств с типом "Выбор одного значения"',
      name: 'emptyTradeOffersDescription',
      desc: '',
      args: [],
    );
  }

  /// `Выберите файл`
  String get paymentSystemSelectFile {
    return Intl.message(
      'Выберите файл',
      name: 'paymentSystemSelectFile',
      desc: '',
      args: [],
    );
  }

  /// `Файл прикреплен`
  String get paymentSystemFileSelected {
    return Intl.message(
      'Файл прикреплен',
      name: 'paymentSystemFileSelected',
      desc: '',
      args: [],
    );
  }

  /// `Яндекс Карты`
  String get aboutClientAndOrderAddressBottomSheetYandexMap {
    return Intl.message(
      'Яндекс Карты',
      name: 'aboutClientAndOrderAddressBottomSheetYandexMap',
      desc: '',
      args: [],
    );
  }

  /// `Роль`
  String get storeListRoleName {
    return Intl.message(
      'Роль',
      name: 'storeListRoleName',
      desc: '',
      args: [],
    );
  }

  /// `Приглашение`
  String get storeInvitationViewHeader {
    return Intl.message(
      'Приглашение',
      name: 'storeInvitationViewHeader',
      desc: '',
      args: [],
    );
  }

  /// `Принять приглашение`
  String get storeInvitationViewInvitationButton {
    return Intl.message(
      'Принять приглашение',
      name: 'storeInvitationViewInvitationButton',
      desc: '',
      args: [],
    );
  }

  /// `Приглашение на роль не найдено`
  String get storeInvitationViewErrorDescription {
    return Intl.message(
      'Приглашение на роль не найдено',
      name: 'storeInvitationViewErrorDescription',
      desc: '',
      args: [],
    );
  }

  /// `У вас есть интернет-эквайринг?`
  String get paymentCardWoopkassaInternetAcquiring {
    return Intl.message(
      'У вас есть интернет-эквайринг?',
      name: 'paymentCardWoopkassaInternetAcquiring',
      desc: '',
      args: [],
    );
  }

  /// `Напишите нам. Мы поможем его настроить.`
  String get paymentCardWoopkassaWriteUsForHelp {
    return Intl.message(
      'Напишите нам. Мы поможем его настроить.',
      name: 'paymentCardWoopkassaWriteUsForHelp',
      desc: '',
      args: [],
    );
  }

  /// `Вам нужен интернет-эквайринг?`
  String get paymentCardWoopkassaDoYouNeedInternetAcquiring {
    return Intl.message(
      'Вам нужен интернет-эквайринг?',
      name: 'paymentCardWoopkassaDoYouNeedInternetAcquiring',
      desc: '',
      args: [],
    );
  }

  /// `Напишите нам. Мы поможем вам с выбором.`
  String get paymentCardWoopkassaWriteUsHelpYouChoice {
    return Intl.message(
      'Напишите нам. Мы поможем вам с выбором.',
      name: 'paymentCardWoopkassaWriteUsHelpYouChoice',
      desc: '',
      args: [],
    );
  }

  /// `Закуп:`
  String get productBasePriceLabel {
    return Intl.message(
      'Закуп:',
      name: 'productBasePriceLabel',
      desc: '',
      args: [],
    );
  }

  /// `Продажа:`
  String get productPriceLabel {
    return Intl.message(
      'Продажа:',
      name: 'productPriceLabel',
      desc: '',
      args: [],
    );
  }

  /// `Время доставки`
  String get deliveryTimeLabel {
    return Intl.message(
      'Время доставки',
      name: 'deliveryTimeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Собрано (закуп)`
  String get baseSumCollectFormatedLabel {
    return Intl.message(
      'Собрано (закуп)',
      name: 'baseSumCollectFormatedLabel',
      desc: '',
      args: [],
    );
  }

  /// `Собрано (продажа)`
  String get sumCollectFormatedLabel {
    return Intl.message(
      'Собрано (продажа)',
      name: 'sumCollectFormatedLabel',
      desc: '',
      args: [],
    );
  }

  /// `Комбинированный`
  String get paymentSystemCombined {
    return Intl.message(
      'Комбинированный',
      name: 'paymentSystemCombined',
      desc: '',
      args: [],
    );
  }

  /// `Характеристика: `
  String get characteristics {
    return Intl.message(
      'Характеристика: ',
      name: 'characteristics',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий к товару`
  String get itemComments {
    return Intl.message(
      'Комментарий к товару',
      name: 'itemComments',
      desc: '',
      args: [],
    );
  }

  /// `Импорт каталога`
  String get importCatalog {
    return Intl.message(
      'Импорт каталога',
      name: 'importCatalog',
      desc: '',
      args: [],
    );
  }

  /// `Виджет для сайта`
  String get widgetForSite {
    return Intl.message(
      'Виджет для сайта',
      name: 'widgetForSite',
      desc: '',
      args: [],
    );
  }

  /// `Источник данных: YML-файл`
  String get sourceYML {
    return Intl.message(
      'Источник данных: YML-файл',
      name: 'sourceYML',
      desc: '',
      args: [],
    );
  }

  /// `Источник данных: Umag.kz`
  String get sourceUMAG {
    return Intl.message(
      'Источник данных: Umag.kz',
      name: 'sourceUMAG',
      desc: '',
      args: [],
    );
  }

  /// `Импорт`
  String get import {
    return Intl.message(
      'Импорт',
      name: 'import',
      desc: '',
      args: [],
    );
  }

  /// `По району`
  String get settingsDeliveryMethodToDistrict {
    return Intl.message(
      'По району',
      name: 'settingsDeliveryMethodToDistrict',
      desc: '',
      args: [],
    );
  }

  /// `Доставка в радиусе`
  String get settingsDeliveryInRadius {
    return Intl.message(
      'Доставка в радиусе',
      name: 'settingsDeliveryInRadius',
      desc: '',
      args: [],
    );
  }

  /// `Доставка в полигоне`
  String get settingsDeliveryInPolygon {
    return Intl.message(
      'Доставка в полигоне',
      name: 'settingsDeliveryInPolygon',
      desc: '',
      args: [],
    );
  }

  /// `Импорт полигонов доставки`
  String get settingsDeliveryImportPolygon {
    return Intl.message(
      'Импорт полигонов доставки',
      name: 'settingsDeliveryImportPolygon',
      desc: '',
      args: [],
    );
  }

  /// `Радиус (метров)`
  String get settingsDeliveryRadius {
    return Intl.message(
      'Радиус (метров)',
      name: 'settingsDeliveryRadius',
      desc: '',
      args: [],
    );
  }

  /// `Нельзя поменять валюту магазина`
  String get currency_change_not_allowed {
    return Intl.message(
      'Нельзя поменять валюту магазина',
      name: 'currency_change_not_allowed',
      desc: '',
      args: [],
    );
  }

  /// `Укажите радиус доставки от точки`
  String get setRadiusDeliveryFromThePoint {
    return Intl.message(
      'Укажите радиус доставки от точки',
      name: 'setRadiusDeliveryFromThePoint',
      desc: '',
      args: [],
    );
  }

  /// `Сервисный сбор или налог`
  String get serviceFeeOrTax {
    return Intl.message(
      'Сервисный сбор или налог',
      name: 'serviceFeeOrTax',
      desc: '',
      args: [],
    );
  }

  /// `% от суммы товаров в заказе`
  String get percentageOfTheAmountInTheOrder {
    return Intl.message(
      '% от суммы товаров в заказе',
      name: 'percentageOfTheAmountInTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Заполните обязательные поля`
  String get fillRequiredFields {
    return Intl.message(
      'Заполните обязательные поля',
      name: 'fillRequiredFields',
      desc: '',
      args: [],
    );
  }

  /// `Ваша роль`
  String get yourRole {
    return Intl.message(
      'Ваша роль',
      name: 'yourRole',
      desc: '',
      args: [],
    );
  }

  /// `Я владелец или администратор бизнеса`
  String get ownerOrAdministrator {
    return Intl.message(
      'Я владелец или администратор бизнеса',
      name: 'ownerOrAdministrator',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрируйте ваш магазин и пригласите сотрудников для онлайн продаж`
  String get registerYourStore {
    return Intl.message(
      'Зарегистрируйте ваш магазин и пригласите сотрудников для онлайн продаж',
      name: 'registerYourStore',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрировать`
  String get toRegister {
    return Intl.message(
      'Зарегистрировать',
      name: 'toRegister',
      desc: '',
      args: [],
    );
  }

  /// `Я сотрудник и у меня есть приглашение`
  String get employeeAndAnInvitation {
    return Intl.message(
      'Я сотрудник и у меня есть приглашение',
      name: 'employeeAndAnInvitation',
      desc: '',
      args: [],
    );
  }

  /// `Получите от работодателя приглашение на вашу роль и перейдите по ссылке`
  String get getAnInviteFromTheOwner {
    return Intl.message(
      'Получите от работодателя приглашение на вашу роль и перейдите по ссылке',
      name: 'getAnInviteFromTheOwner',
      desc: '',
      args: [],
    );
  }

  /// `Активировать приглашение`
  String get activateInvite {
    return Intl.message(
      'Активировать приглашение',
      name: 'activateInvite',
      desc: '',
      args: [],
    );
  }

  /// `Код приглашения`
  String get codeInvite {
    return Intl.message(
      'Код приглашения',
      name: 'codeInvite',
      desc: '',
      args: [],
    );
  }

  /// `Введите имя`
  String get enterYourName {
    return Intl.message(
      'Введите имя',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Доступ к камере запрещен`
  String get cameraAccessDenied {
    return Intl.message(
      'Доступ к камере запрещен',
      name: 'cameraAccessDenied',
      desc: '',
      args: [],
    );
  }

  /// `Этому приложению требуется доступ к вашей камере. Пожалуйста, включите доступ к камере в настройках`
  String get cameraAccessDeniedDescription {
    return Intl.message(
      'Этому приложению требуется доступ к вашей камере. Пожалуйста, включите доступ к камере в настройках',
      name: 'cameraAccessDeniedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Доступ к галерее запрещен`
  String get galleryAccessDenied {
    return Intl.message(
      'Доступ к галерее запрещен',
      name: 'galleryAccessDenied',
      desc: '',
      args: [],
    );
  }

  /// `Этому приложению требуется доступ к вашей галерее. Пожалуйста, включите доступ к галерее в настройках`
  String get galleryAccessDeniedDescription {
    return Intl.message(
      'Этому приложению требуется доступ к вашей галерее. Пожалуйста, включите доступ к галерее в настройках',
      name: 'galleryAccessDeniedDescription',
      desc: '',
      args: [],
    );
  }

  /// `Интервалы не заданы`
  String get intervalsNotSet {
    return Intl.message(
      'Интервалы не заданы',
      name: 'intervalsNotSet',
      desc: '',
      args: [],
    );
  }

  /// `Нету интернет подключения`
  String get noNetworkConnection {
    return Intl.message(
      'Нету интернет подключения',
      name: 'noNetworkConnection',
      desc: '',
      args: [],
    );
  }

  /// `Что то пошло не так`
  String get somethingWrong {
    return Intl.message(
      'Что то пошло не так',
      name: 'somethingWrong',
      desc: '',
      args: [],
    );
  }

  /// `Понятно`
  String get clearlyUnderstood {
    return Intl.message(
      'Понятно',
      name: 'clearlyUnderstood',
      desc: '',
      args: [],
    );
  }

  /// `Сделать фото`
  String get takeNewPhoto {
    return Intl.message(
      'Сделать фото',
      name: 'takeNewPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать фото из галлереи`
  String get selectPhotoFromGallery {
    return Intl.message(
      'Выбрать фото из галлереи',
      name: 'selectPhotoFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать видео из галлереи`
  String get selectVideoFromGallery {
    return Intl.message(
      'Выбрать видео из галлереи',
      name: 'selectVideoFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Записать видео`
  String get recordVideo {
    return Intl.message(
      'Записать видео',
      name: 'recordVideo',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать из галлереи`
  String get selectFromGallery {
    return Intl.message(
      'Выбрать из галлереи',
      name: 'selectFromGallery',
      desc: '',
      args: [],
    );
  }

  /// `Килобайт`
  String get kb {
    return Intl.message(
      'Килобайт',
      name: 'kb',
      desc: '',
      args: [],
    );
  }

  /// `Гигабайт`
  String get gb {
    return Intl.message(
      'Гигабайт',
      name: 'gb',
      desc: '',
      args: [],
    );
  }

  /// `Мегабайт`
  String get mb {
    return Intl.message(
      'Мегабайт',
      name: 'mb',
      desc: '',
      args: [],
    );
  }

  /// `Нажмите назад ещё раз чтобы закрыть приложение`
  String get clickBackAgain {
    return Intl.message(
      'Нажмите назад ещё раз чтобы закрыть приложение',
      name: 'clickBackAgain',
      desc: '',
      args: [],
    );
  }

  /// `Показать`
  String get show {
    return Intl.message(
      'Показать',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `Заменить`
  String get replace {
    return Intl.message(
      'Заменить',
      name: 'replace',
      desc: '',
      args: [],
    );
  }

  /// `Удалить`
  String get delete {
    return Intl.message(
      'Удалить',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Карта`
  String get map {
    return Intl.message(
      'Карта',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `При оплате`
  String get whenPaying {
    return Intl.message(
      'При оплате',
      name: 'whenPaying',
      desc: '',
      args: [],
    );
  }

  /// `Через {hours} часа`
  String afterHours(Object hours) {
    return Intl.message(
      'Через $hours часа',
      name: 'afterHours',
      desc: '',
      args: [hours],
    );
  }

  /// `Скопировано в буффер обмена`
  String get wasCopiedToBuffer {
    return Intl.message(
      'Скопировано в буффер обмена',
      name: 'wasCopiedToBuffer',
      desc: '',
      args: [],
    );
  }

  /// `Удалить демо-товары из каталога`
  String get deleteDemoGoods {
    return Intl.message(
      'Удалить демо-товары из каталога',
      name: 'deleteDemoGoods',
      desc: '',
      args: [],
    );
  }

  /// `ВЫБЕРИТЕ СЛУЖБУ ДОСТАВКИ`
  String get chooseDeliveryMethod {
    return Intl.message(
      'ВЫБЕРИТЕ СЛУЖБУ ДОСТАВКИ',
      name: 'chooseDeliveryMethod',
      desc: '',
      args: [],
    );
  }

  /// `Собственная служба доставки`
  String get ownDeliveryMethod {
    return Intl.message(
      'Собственная служба доставки',
      name: 'ownDeliveryMethod',
      desc: '',
      args: [],
    );
  }

  /// `Яндекс Доставка`
  String get yandexDelivery {
    return Intl.message(
      'Яндекс Доставка',
      name: 'yandexDelivery',
      desc: '',
      args: [],
    );
  }

  /// `API key`
  String get apiKey {
    return Intl.message(
      'API key',
      name: 'apiKey',
      desc: '',
      args: [],
    );
  }

  /// `Введите API key`
  String get apiKeyHint {
    return Intl.message(
      'Введите API key',
      name: 'apiKeyHint',
      desc: '',
      args: [],
    );
  }

  /// `Варианты доставки`
  String get deliveryMethod {
    return Intl.message(
      'Варианты доставки',
      name: 'deliveryMethod',
      desc: '',
      args: [],
    );
  }

  /// `Дополнительные условия доставки`
  String get additionalDeliveryConditions {
    return Intl.message(
      'Дополнительные условия доставки',
      name: 'additionalDeliveryConditions',
      desc: '',
      args: [],
    );
  }

  /// `Где забрать`
  String get deliveryPickUp {
    return Intl.message(
      'Где забрать',
      name: 'deliveryPickUp',
      desc: '',
      args: [],
    );
  }

  /// `Где забрать товар`
  String get itemDeliveryPickUp {
    return Intl.message(
      'Где забрать товар',
      name: 'itemDeliveryPickUp',
      desc: '',
      args: [],
    );
  }

  /// `Адрес клиента`
  String get clientAddress {
    return Intl.message(
      'Адрес клиента',
      name: 'clientAddress',
      desc: '',
      args: [],
    );
  }

  /// `Комментарий водителю`
  String get driverComment {
    return Intl.message(
      'Комментарий водителю',
      name: 'driverComment',
      desc: '',
      args: [],
    );
  }

  /// `Стандартный комментарий водителю`
  String get standardDriverComment {
    return Intl.message(
      'Стандартный комментарий водителю',
      name: 'standardDriverComment',
      desc: '',
      args: [],
    );
  }

  /// `Выберите способ сортировки`
  String get selectTypeSort {
    return Intl.message(
      'Выберите способ сортировки',
      name: 'selectTypeSort',
      desc: '',
      args: [],
    );
  }

  /// `Введите комментарий водителю`
  String get driverCommentHint {
    return Intl.message(
      'Введите комментарий водителю',
      name: 'driverCommentHint',
      desc: '',
      args: [],
    );
  }

  /// `Максимальная стоимость доставки`
  String get maxDeliveryCost {
    return Intl.message(
      'Максимальная стоимость доставки',
      name: 'maxDeliveryCost',
      desc: '',
      args: [],
    );
  }

  /// `Выберите способ доставки`
  String get chooseDelivery {
    return Intl.message(
      'Выберите способ доставки',
      name: 'chooseDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Ответственный менеджер`
  String get managerResponsible {
    return Intl.message(
      'Ответственный менеджер',
      name: 'managerResponsible',
      desc: '',
      args: [],
    );
  }

  /// `Рассчитать`
  String get calculate {
    return Intl.message(
      'Рассчитать',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Язык`
  String get language {
    return Intl.message(
      'Язык',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Оформить`
  String get makeOrder {
    return Intl.message(
      'Оформить',
      name: 'makeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Дополнить`
  String get addUp {
    return Intl.message(
      'Дополнить',
      name: 'addUp',
      desc: '',
      args: [],
    );
  }

  /// `Дополнение`
  String get addition {
    return Intl.message(
      'Дополнение',
      name: 'addition',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `ИКПУ`
  String get iKPU {
    return Intl.message(
      'ИКПУ',
      name: 'iKPU',
      desc: '',
      args: [],
    );
  }

  /// `Цифровая маркировка`
  String get traceId {
    return Intl.message(
      'Цифровая маркировка',
      name: 'traceId',
      desc: '',
      args: [],
    );
  }

  /// `Введите цифровую маркировку`
  String get enterTraceId {
    return Intl.message(
      'Введите цифровую маркировку',
      name: 'enterTraceId',
      desc: '',
      args: [],
    );
  }

  /// `Статус доставки`
  String get deliveryStatus {
    return Intl.message(
      'Статус доставки',
      name: 'deliveryStatus',
      desc: '',
      args: [],
    );
  }

  /// `Отменить доставку`
  String get cancelDelivery {
    return Intl.message(
      'Отменить доставку',
      name: 'cancelDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Введите адрес`
  String get enterAddress {
    return Intl.message(
      'Введите адрес',
      name: 'enterAddress',
      desc: '',
      args: [],
    );
  }

  /// `Зарегистрировать магазин`
  String get registerShop {
    return Intl.message(
      'Зарегистрировать магазин',
      name: 'registerShop',
      desc: '',
      args: [],
    );
  }

  /// `Прочие настройки магазина`
  String get otherSettingsStore {
    return Intl.message(
      'Прочие настройки магазина',
      name: 'otherSettingsStore',
      desc: '',
      args: [],
    );
  }

  /// `Активность, код магазина в URL-ссылке...`
  String get activityStoreCodeUrlLink {
    return Intl.message(
      'Активность, код магазина в URL-ссылке...',
      name: 'activityStoreCodeUrlLink',
      desc: '',
      args: [],
    );
  }

  /// `Уже существует такая роль`
  String get alreadyExistRole {
    return Intl.message(
      'Уже существует такая роль',
      name: 'alreadyExistRole',
      desc: '',
      args: [],
    );
  }

  /// `Для смены языка воспользуйтесь созданием магазина`
  String get forEditLanguage {
    return Intl.message(
      'Для смены языка воспользуйтесь созданием магазина',
      name: 'forEditLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Брошен`
  String get abandoned {
    return Intl.message(
      'Брошен',
      name: 'abandoned',
      desc: '',
      args: [],
    );
  }

  /// `Название магазина не может быть пустым`
  String get storeNameCannotBeEmpty {
    return Intl.message(
      'Название магазина не может быть пустым',
      name: 'storeNameCannotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Время ожидания превышено`
  String get waitingTimeIsLong {
    return Intl.message(
      'Время ожидания превышено',
      name: 'waitingTimeIsLong',
      desc: '',
      args: [],
    );
  }

  /// `Сервер не отвечает, повторите пожалуйста позже`
  String get serverIsNotResponding {
    return Intl.message(
      'Сервер не отвечает, повторите пожалуйста позже',
      name: 'serverIsNotResponding',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'kg'),
      Locale.fromSubtags(languageCode: 'kz'),
      Locale.fromSubtags(languageCode: 'pt'),
      Locale.fromSubtags(languageCode: 'uz'),
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalization> load(Locale locale) => AppLocalization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
