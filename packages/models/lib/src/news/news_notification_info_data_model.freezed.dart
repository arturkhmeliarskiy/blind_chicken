// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_notification_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsNotificationInfoDataModel {
  String get id => throw _privateConstructorUsedError;
  String get typeNews => throw _privateConstructorUsedError;

  /// Create a copy of NewsNotificationInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsNotificationInfoDataModelCopyWith<NewsNotificationInfoDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsNotificationInfoDataModelCopyWith<$Res> {
  factory $NewsNotificationInfoDataModelCopyWith(
          NewsNotificationInfoDataModel value,
          $Res Function(NewsNotificationInfoDataModel) then) =
      _$NewsNotificationInfoDataModelCopyWithImpl<$Res,
          NewsNotificationInfoDataModel>;
  @useResult
  $Res call({String id, String typeNews});
}

/// @nodoc
class _$NewsNotificationInfoDataModelCopyWithImpl<$Res,
        $Val extends NewsNotificationInfoDataModel>
    implements $NewsNotificationInfoDataModelCopyWith<$Res> {
  _$NewsNotificationInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsNotificationInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeNews = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeNews: null == typeNews
          ? _value.typeNews
          : typeNews // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsNotificationInfoDataModelImplCopyWith<$Res>
    implements $NewsNotificationInfoDataModelCopyWith<$Res> {
  factory _$$NewsNotificationInfoDataModelImplCopyWith(
          _$NewsNotificationInfoDataModelImpl value,
          $Res Function(_$NewsNotificationInfoDataModelImpl) then) =
      __$$NewsNotificationInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String typeNews});
}

/// @nodoc
class __$$NewsNotificationInfoDataModelImplCopyWithImpl<$Res>
    extends _$NewsNotificationInfoDataModelCopyWithImpl<$Res,
        _$NewsNotificationInfoDataModelImpl>
    implements _$$NewsNotificationInfoDataModelImplCopyWith<$Res> {
  __$$NewsNotificationInfoDataModelImplCopyWithImpl(
      _$NewsNotificationInfoDataModelImpl _value,
      $Res Function(_$NewsNotificationInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsNotificationInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeNews = null,
  }) {
    return _then(_$NewsNotificationInfoDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeNews: null == typeNews
          ? _value.typeNews
          : typeNews // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsNotificationInfoDataModelImpl
    extends _NewsNotificationInfoDataModel {
  _$NewsNotificationInfoDataModelImpl(
      {required this.id, required this.typeNews})
      : super._();

  @override
  final String id;
  @override
  final String typeNews;

  @override
  String toString() {
    return 'NewsNotificationInfoDataModel(id: $id, typeNews: $typeNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsNotificationInfoDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeNews, typeNews) ||
                other.typeNews == typeNews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, typeNews);

  /// Create a copy of NewsNotificationInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsNotificationInfoDataModelImplCopyWith<
          _$NewsNotificationInfoDataModelImpl>
      get copyWith => __$$NewsNotificationInfoDataModelImplCopyWithImpl<
          _$NewsNotificationInfoDataModelImpl>(this, _$identity);
}

abstract class _NewsNotificationInfoDataModel
    extends NewsNotificationInfoDataModel {
  factory _NewsNotificationInfoDataModel(
      {required final String id,
      required final String typeNews}) = _$NewsNotificationInfoDataModelImpl;
  _NewsNotificationInfoDataModel._() : super._();

  @override
  String get id;
  @override
  String get typeNews;

  /// Create a copy of NewsNotificationInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsNotificationInfoDataModelImplCopyWith<
          _$NewsNotificationInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
