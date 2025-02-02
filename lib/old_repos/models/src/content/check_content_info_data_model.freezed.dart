// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_content_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckContentInfoDataModel {
  String get dateTime => throw _privateConstructorUsedError;
  List<String> get screens => throw _privateConstructorUsedError;
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CheckContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckContentInfoDataModelCopyWith<CheckContentInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckContentInfoDataModelCopyWith<$Res> {
  factory $CheckContentInfoDataModelCopyWith(CheckContentInfoDataModel value,
          $Res Function(CheckContentInfoDataModel) then) =
      _$CheckContentInfoDataModelCopyWithImpl<$Res, CheckContentInfoDataModel>;
  @useResult
  $Res call(
      {String dateTime,
      List<String> screens,
      String r,
      String e,
      String errorMessage});
}

/// @nodoc
class _$CheckContentInfoDataModelCopyWithImpl<$Res,
        $Val extends CheckContentInfoDataModel>
    implements $CheckContentInfoDataModelCopyWith<$Res> {
  _$CheckContentInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? screens = null,
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      screens: null == screens
          ? _value.screens
          : screens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckContentInfoDataModelImplCopyWith<$Res>
    implements $CheckContentInfoDataModelCopyWith<$Res> {
  factory _$$CheckContentInfoDataModelImplCopyWith(
          _$CheckContentInfoDataModelImpl value,
          $Res Function(_$CheckContentInfoDataModelImpl) then) =
      __$$CheckContentInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dateTime,
      List<String> screens,
      String r,
      String e,
      String errorMessage});
}

/// @nodoc
class __$$CheckContentInfoDataModelImplCopyWithImpl<$Res>
    extends _$CheckContentInfoDataModelCopyWithImpl<$Res,
        _$CheckContentInfoDataModelImpl>
    implements _$$CheckContentInfoDataModelImplCopyWith<$Res> {
  __$$CheckContentInfoDataModelImplCopyWithImpl(
      _$CheckContentInfoDataModelImpl _value,
      $Res Function(_$CheckContentInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? screens = null,
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CheckContentInfoDataModelImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      screens: null == screens
          ? _value._screens
          : screens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckContentInfoDataModelImpl extends _CheckContentInfoDataModel {
  _$CheckContentInfoDataModelImpl(
      {required this.dateTime,
      required final List<String> screens,
      required this.r,
      required this.e,
      required this.errorMessage})
      : _screens = screens,
        super._();

  @override
  final String dateTime;
  final List<String> _screens;
  @override
  List<String> get screens {
    if (_screens is EqualUnmodifiableListView) return _screens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screens);
  }

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CheckContentInfoDataModel(dateTime: $dateTime, screens: $screens, r: $r, e: $e, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckContentInfoDataModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._screens, _screens) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime,
      const DeepCollectionEquality().hash(_screens), r, e, errorMessage);

  /// Create a copy of CheckContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckContentInfoDataModelImplCopyWith<_$CheckContentInfoDataModelImpl>
      get copyWith => __$$CheckContentInfoDataModelImplCopyWithImpl<
          _$CheckContentInfoDataModelImpl>(this, _$identity);
}

abstract class _CheckContentInfoDataModel extends CheckContentInfoDataModel {
  factory _CheckContentInfoDataModel(
      {required final String dateTime,
      required final List<String> screens,
      required final String r,
      required final String e,
      required final String errorMessage}) = _$CheckContentInfoDataModelImpl;
  _CheckContentInfoDataModel._() : super._();

  @override
  String get dateTime;
  @override
  List<String> get screens;
  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;

  /// Create a copy of CheckContentInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckContentInfoDataModelImplCopyWith<_$CheckContentInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
