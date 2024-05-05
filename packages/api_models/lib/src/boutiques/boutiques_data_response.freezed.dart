// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutiques_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoutiquesDataResponse _$BoutiquesDataResponseFromJson(
    Map<String, dynamic> json) {
  return _BoutiquesDataResponse.fromJson(json);
}

/// @nodoc
mixin _$BoutiquesDataResponse {
  @JsonKey(name: 'foto_min')
  String? get fotoMin => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_short')
  String? get nameShort => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get schedule => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid_store')
  String? get uidStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
  BoutiqueCoordinatesResponse? get coordinates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoutiquesDataResponseCopyWith<BoutiquesDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiquesDataResponseCopyWith<$Res> {
  factory $BoutiquesDataResponseCopyWith(BoutiquesDataResponse value,
          $Res Function(BoutiquesDataResponse) then) =
      _$BoutiquesDataResponseCopyWithImpl<$Res, BoutiquesDataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'foto_min') String? fotoMin,
      String? url,
      String? caption,
      String? name,
      @JsonKey(name: 'name_short') String? nameShort,
      String? address,
      String? schedule,
      @JsonKey(name: 'uid_store') String? uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      BoutiqueCoordinatesResponse? coordinates});

  $BoutiqueCoordinatesResponseCopyWith<$Res>? get coordinates;
}

/// @nodoc
class _$BoutiquesDataResponseCopyWithImpl<$Res,
        $Val extends BoutiquesDataResponse>
    implements $BoutiquesDataResponseCopyWith<$Res> {
  _$BoutiquesDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fotoMin = freezed,
    Object? url = freezed,
    Object? caption = freezed,
    Object? name = freezed,
    Object? nameShort = freezed,
    Object? address = freezed,
    Object? schedule = freezed,
    Object? uidStore = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      fotoMin: freezed == fotoMin
          ? _value.fotoMin
          : fotoMin // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameShort: freezed == nameShort
          ? _value.nameShort
          : nameShort // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BoutiquesDataResponseImplCopyWith<$Res>
    implements $BoutiquesDataResponseCopyWith<$Res> {
  factory _$$BoutiquesDataResponseImplCopyWith(
          _$BoutiquesDataResponseImpl value,
          $Res Function(_$BoutiquesDataResponseImpl) then) =
      __$$BoutiquesDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'foto_min') String? fotoMin,
      String? url,
      String? caption,
      String? name,
      @JsonKey(name: 'name_short') String? nameShort,
      String? address,
      String? schedule,
      @JsonKey(name: 'uid_store') String? uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      BoutiqueCoordinatesResponse? coordinates});

  @override
  $BoutiqueCoordinatesResponseCopyWith<$Res>? get coordinates;
}

/// @nodoc
class __$$BoutiquesDataResponseImplCopyWithImpl<$Res>
    extends _$BoutiquesDataResponseCopyWithImpl<$Res,
        _$BoutiquesDataResponseImpl>
    implements _$$BoutiquesDataResponseImplCopyWith<$Res> {
  __$$BoutiquesDataResponseImplCopyWithImpl(_$BoutiquesDataResponseImpl _value,
      $Res Function(_$BoutiquesDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fotoMin = freezed,
    Object? url = freezed,
    Object? caption = freezed,
    Object? name = freezed,
    Object? nameShort = freezed,
    Object? address = freezed,
    Object? schedule = freezed,
    Object? uidStore = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$BoutiquesDataResponseImpl(
      fotoMin: freezed == fotoMin
          ? _value.fotoMin
          : fotoMin // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameShort: freezed == nameShort
          ? _value.nameShort
          : nameShort // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoutiquesDataResponseImpl extends _BoutiquesDataResponse {
  _$BoutiquesDataResponseImpl(
      {@JsonKey(name: 'foto_min') this.fotoMin,
      this.url,
      this.caption,
      this.name,
      @JsonKey(name: 'name_short') this.nameShort,
      this.address,
      this.schedule,
      @JsonKey(name: 'uid_store') this.uidStore,
      @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
      this.coordinates})
      : super._();

  factory _$BoutiquesDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoutiquesDataResponseImplFromJson(json);

  @override
  @JsonKey(name: 'foto_min')
  final String? fotoMin;
  @override
  final String? url;
  @override
  final String? caption;
  @override
  final String? name;
  @override
  @JsonKey(name: 'name_short')
  final String? nameShort;
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
  String toString() {
    return 'BoutiquesDataResponse(fotoMin: $fotoMin, url: $url, caption: $caption, name: $name, nameShort: $nameShort, address: $address, schedule: $schedule, uidStore: $uidStore, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiquesDataResponseImpl &&
            (identical(other.fotoMin, fotoMin) || other.fotoMin == fotoMin) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameShort, nameShort) ||
                other.nameShort == nameShort) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule) &&
            (identical(other.uidStore, uidStore) ||
                other.uidStore == uidStore) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fotoMin, url, caption, name,
      nameShort, address, schedule, uidStore, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiquesDataResponseImplCopyWith<_$BoutiquesDataResponseImpl>
      get copyWith => __$$BoutiquesDataResponseImplCopyWithImpl<
          _$BoutiquesDataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoutiquesDataResponseImplToJson(
      this,
    );
  }
}

abstract class _BoutiquesDataResponse extends BoutiquesDataResponse {
  factory _BoutiquesDataResponse(
          {@JsonKey(name: 'foto_min') final String? fotoMin,
          final String? url,
          final String? caption,
          final String? name,
          @JsonKey(name: 'name_short') final String? nameShort,
          final String? address,
          final String? schedule,
          @JsonKey(name: 'uid_store') final String? uidStore,
          @JsonKey(name: 'coordinates', fromJson: _convertCoordinates)
          final BoutiqueCoordinatesResponse? coordinates}) =
      _$BoutiquesDataResponseImpl;
  _BoutiquesDataResponse._() : super._();

  factory _BoutiquesDataResponse.fromJson(Map<String, dynamic> json) =
      _$BoutiquesDataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'foto_min')
  String? get fotoMin;
  @override
  String? get url;
  @override
  String? get caption;
  @override
  String? get name;
  @override
  @JsonKey(name: 'name_short')
  String? get nameShort;
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
  @JsonKey(ignore: true)
  _$$BoutiquesDataResponseImplCopyWith<_$BoutiquesDataResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
