// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_context_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchContextDataModel {
  String get contentType => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  String get streetId => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchContextDataModelCopyWith<SearchContextDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchContextDataModelCopyWith<$Res> {
  factory $SearchContextDataModelCopyWith(SearchContextDataModel value,
          $Res Function(SearchContextDataModel) then) =
      _$SearchContextDataModelCopyWithImpl<$Res, SearchContextDataModel>;
  @useResult
  $Res call({String contentType, String cityId, String streetId, String query});
}

/// @nodoc
class _$SearchContextDataModelCopyWithImpl<$Res,
        $Val extends SearchContextDataModel>
    implements $SearchContextDataModelCopyWith<$Res> {
  _$SearchContextDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? cityId = null,
    Object? streetId = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      streetId: null == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchContextDataModelImplCopyWith<$Res>
    implements $SearchContextDataModelCopyWith<$Res> {
  factory _$$SearchContextDataModelImplCopyWith(
          _$SearchContextDataModelImpl value,
          $Res Function(_$SearchContextDataModelImpl) then) =
      __$$SearchContextDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String contentType, String cityId, String streetId, String query});
}

/// @nodoc
class __$$SearchContextDataModelImplCopyWithImpl<$Res>
    extends _$SearchContextDataModelCopyWithImpl<$Res,
        _$SearchContextDataModelImpl>
    implements _$$SearchContextDataModelImplCopyWith<$Res> {
  __$$SearchContextDataModelImplCopyWithImpl(
      _$SearchContextDataModelImpl _value,
      $Res Function(_$SearchContextDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? cityId = null,
    Object? streetId = null,
    Object? query = null,
  }) {
    return _then(_$SearchContextDataModelImpl(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      streetId: null == streetId
          ? _value.streetId
          : streetId // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchContextDataModelImpl extends _SearchContextDataModel {
  _$SearchContextDataModelImpl(
      {required this.contentType,
      required this.cityId,
      required this.streetId,
      required this.query})
      : super._();

  @override
  final String contentType;
  @override
  final String cityId;
  @override
  final String streetId;
  @override
  final String query;

  @override
  String toString() {
    return 'SearchContextDataModel(contentType: $contentType, cityId: $cityId, streetId: $streetId, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContextDataModelImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.streetId, streetId) ||
                other.streetId == streetId) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, contentType, cityId, streetId, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContextDataModelImplCopyWith<_$SearchContextDataModelImpl>
      get copyWith => __$$SearchContextDataModelImplCopyWithImpl<
          _$SearchContextDataModelImpl>(this, _$identity);
}

abstract class _SearchContextDataModel extends SearchContextDataModel {
  factory _SearchContextDataModel(
      {required final String contentType,
      required final String cityId,
      required final String streetId,
      required final String query}) = _$SearchContextDataModelImpl;
  _SearchContextDataModel._() : super._();

  @override
  String get contentType;
  @override
  String get cityId;
  @override
  String get streetId;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchContextDataModelImplCopyWith<_$SearchContextDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
