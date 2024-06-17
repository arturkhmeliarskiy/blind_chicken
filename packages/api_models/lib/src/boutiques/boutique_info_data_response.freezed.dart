// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_info_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiqueInfoDataResponse _$BoutiqueInfoDataResponseFromJson(
    Map<String, dynamic> json) {
  return _BoutiqueInfoDataResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiqueInfoDataResponse {
  @JsonKey(name: 'foto_min_list')
  String? get fotoMinList => throw _privateConstructorUsedError;
  @JsonKey(name: 'foto_detail')
  List<BoutiqueFotoDetailResponse>? get fotoDetail =>
      throw _privateConstructorUsedError;
  List<String>? get video => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid_store')
  String? get uidStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
  BoutiqueCoordinatesResponse? get coordinates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'address_full')
  String? get addressFull => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_short')
  String? get nameShort => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoutiqueInfoDataResponseCopyWith<BoutiqueInfoDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueInfoDataResponseCopyWith<$Res> {
  factory $BoutiqueInfoDataResponseCopyWith(BoutiqueInfoDataResponse value,
          $Res Function(BoutiqueInfoDataResponse) then) =
      _$BoutiqueInfoDataResponseCopyWithImpl<$Res, BoutiqueInfoDataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'foto_min_list') String? fotoMinList,
      @JsonKey(name: 'foto_detail')
      List<BoutiqueFotoDetailResponse>? fotoDetail,
      List<String>? video,
      String? url,
      String? caption,
      String? address,
      String? schedule,
      @JsonKey(name: 'uid_store') String? uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      BoutiqueCoordinatesResponse? coordinates,
      @JsonKey(name: 'address_full') String? addressFull,
      @JsonKey(name: 'name_short') String? nameShort,
      String? name});

  $BoutiqueCoordinatesResponseCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$BoutiqueInfoDataResponseCopyWithImpl<$Res,
        $Val extends BoutiqueInfoDataResponse>
    implements $BoutiqueInfoDataResponseCopyWith<$Res> {
  _$BoutiqueInfoDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fotoMinList = freezed,
    Object? fotoDetail = freezed,
    Object? video = freezed,
    Object? url = freezed,
    Object? caption = freezed,
    Object? address = freezed,
    Object? schedule = freezed,
    Object? uidStore = freezed,
    Object? coordinates = freezed,
    Object? addressFull = freezed,
    Object? nameShort = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      fotoMinList: freezed == fotoMinList
          ? _value.fotoMinList
          : fotoMinList // ignore: cast_nullable_to_non_nullable
              as String?,
      fotoDetail: freezed == fotoDetail
          ? _value.fotoDetail
          : fotoDetail // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueFotoDetailResponse>?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String?,
      uidStore: freezed == uidStore
          ? _value.uidStore
          : uidStore // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as BoutiqueCoordinatesResponse?,
      addressFull: freezed == addressFull
          ? _value.addressFull
          : addressFull // ignore: cast_nullable_to_non_nullable
              as String?,
      nameShort: freezed == nameShort
          ? _value.nameShort
          : nameShort // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoutiqueCoordinatesResponseCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $BoutiqueCoordinatesResponseCopyWith<$Res>(_value.coordinates!,
        (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BoutiqueInfoDataResponseImplCopyWith<$Res>
    implements $BoutiqueInfoDataResponseCopyWith<$Res> {
  factory _$$BoutiqueInfoDataResponseImplCopyWith(
          _$BoutiqueInfoDataResponseImpl value,
          $Res Function(_$BoutiqueInfoDataResponseImpl) then) =
      __$$BoutiqueInfoDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'foto_min_list') String? fotoMinList,
      @JsonKey(name: 'foto_detail')
      List<BoutiqueFotoDetailResponse>? fotoDetail,
      List<String>? video,
      String? url,
      String? caption,
      String? address,
      String? schedule,
      @JsonKey(name: 'uid_store') String? uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      BoutiqueCoordinatesResponse? coordinates,
      @JsonKey(name: 'address_full') String? addressFull,
      @JsonKey(name: 'name_short') String? nameShort,
      String? name});

  @override
  $BoutiqueCoordinatesResponseCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$BoutiqueInfoDataResponseImplCopyWithImpl<$Res>
    extends _$BoutiqueInfoDataResponseCopyWithImpl<$Res,
        _$BoutiqueInfoDataResponseImpl>
    implements _$$BoutiqueInfoDataResponseImplCopyWith<$Res> {
  __$$BoutiqueInfoDataResponseImplCopyWithImpl(
      _$BoutiqueInfoDataResponseImpl _value,
      $Res Function(_$BoutiqueInfoDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fotoMinList = freezed,
    Object? fotoDetail = freezed,
    Object? video = freezed,
    Object? url = freezed,
    Object? caption = freezed,
    Object? address = freezed,
    Object? schedule = freezed,
    Object? uidStore = freezed,
    Object? coordinates = freezed,
    Object? addressFull = freezed,
    Object? nameShort = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BoutiqueInfoDataResponseImpl(
      fotoMinList: freezed == fotoMinList
          ? _value.fotoMinList
          : fotoMinList // ignore: cast_nullable_to_non_nullable
              as String?,
      fotoDetail: freezed == fotoDetail
          ? _value._fotoDetail
          : fotoDetail // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueFotoDetailResponse>?,
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String?,
      uidStore: freezed == uidStore
          ? _value.uidStore
          : uidStore // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as BoutiqueCoordinatesResponse?,
      addressFull: freezed == addressFull
          ? _value.addressFull
          : addressFull // ignore: cast_nullable_to_non_nullable
              as String?,
      nameShort: freezed == nameShort
          ? _value.nameShort
          : nameShort // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiqueInfoDataResponseImpl extends _BoutiqueInfoDataResponse {
  _$BoutiqueInfoDataResponseImpl(
      {@JsonKey(name: 'foto_min_list') this.fotoMinList,
      @JsonKey(name: 'foto_detail')
      final List<BoutiqueFotoDetailResponse>? fotoDetail,
      final List<String>? video,
      this.url,
      this.caption,
      this.address,
      this.schedule,
      @JsonKey(name: 'uid_store') this.uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      this.coordinates,
      @JsonKey(name: 'address_full') this.addressFull,
      @JsonKey(name: 'name_short') this.nameShort,
      this.name})
      : _fotoDetail = fotoDetail,
        _video = video,
        super._();

  factory _$BoutiqueInfoDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoutiqueInfoDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'foto_min_list')
  final String? fotoMinList;
  final List<BoutiqueFotoDetailResponse>? _fotoDetail;
  @override
  @JsonKey(name: 'foto_detail')
  List<BoutiqueFotoDetailResponse>? get fotoDetail {
    final value = _fotoDetail;
    if (value == null) return null;
    if (_fotoDetail is EqualUnmodifiableListView) return _fotoDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _video;
  @override
  List<String>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? url;
  @override
  final String? caption;
  @override
  final String? address;
  @override
  final String? schedule;
  @override
  @JsonKey(name: 'uid_store')
  final String? uidStore;
  @override
  @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
  final BoutiqueCoordinatesResponse? coordinates;
  @override
  @JsonKey(name: 'address_full')
  final String? addressFull;
  @override
  @JsonKey(name: 'name_short')
  final String? nameShort;
  @override
  final String? name;

  @override
  String toString() {
    return 'BoutiqueInfoDataResponse(fotoMinList: $fotoMinList, fotoDetail: $fotoDetail, video: $video, url: $url, caption: $caption, address: $address, schedule: $schedule, uidStore: $uidStore, coordinates: $coordinates, addressFull: $addressFull, nameShort: $nameShort, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueInfoDataResponseImpl &&
            (identical(other.fotoMinList, fotoMinList) ||
                other.fotoMinList == fotoMinList) &&
            const DeepCollectionEquality()
                .equals(other._fotoDetail, _fotoDetail) &&
            const DeepCollectionEquality().equals(other._video, _video) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.uidStore, uidStore) ||
                other.uidStore == uidStore) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            (identical(other.addressFull, addressFull) ||
                other.addressFull == addressFull) &&
            (identical(other.nameShort, nameShort) ||
                other.nameShort == nameShort) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fotoMinList,
      const DeepCollectionEquality().hash(_fotoDetail),
      const DeepCollectionEquality().hash(_video),
      url,
      caption,
      address,
      schedule,
      uidStore,
      coordinates,
      addressFull,
      nameShort,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueInfoDataResponseImplCopyWith<_$BoutiqueInfoDataResponseImpl>
      get copyWith => __$$BoutiqueInfoDataResponseImplCopyWithImpl<
          _$BoutiqueInfoDataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiqueInfoDataResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiqueInfoDataResponse extends BoutiqueInfoDataResponse {
  factory _BoutiqueInfoDataResponse(
      {@JsonKey(name: 'foto_min_list') final String? fotoMinList,
      @JsonKey(name: 'foto_detail')
      final List<BoutiqueFotoDetailResponse>? fotoDetail,
      final List<String>? video,
      final String? url,
      final String? caption,
      final String? address,
      final String? schedule,
      @JsonKey(name: 'uid_store') final String? uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      final BoutiqueCoordinatesResponse? coordinates,
      @JsonKey(name: 'address_full') final String? addressFull,
      @JsonKey(name: 'name_short') final String? nameShort,
      final String? name}) = _$BoutiqueInfoDataResponseImpl;
  _BoutiqueInfoDataResponse._() : super._();

  factory _BoutiqueInfoDataResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiqueInfoDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'foto_min_list')
  String? get fotoMinList;
  @override
  @JsonKey(name: 'foto_detail')
  List<BoutiqueFotoDetailResponse>? get fotoDetail;
  @override
  List<String>? get video;
  @override
  String? get url;
  @override
  String? get caption;
  @override
  String? get address;
  @override
  String? get schedule;
  @override
  @JsonKey(name: 'uid_store')
  String? get uidStore;
  @override
  @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
  BoutiqueCoordinatesResponse? get coordinates;
  @override
  @JsonKey(name: 'address_full')
  String? get addressFull;
  @override
  @JsonKey(name: 'name_short')
  String? get nameShort;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueInfoDataResponseImplCopyWith<_$BoutiqueInfoDataResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
