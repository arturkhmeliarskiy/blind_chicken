// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<NewsInfoItemDataModel> get list => throw _privateConstructorUsedError;
  bool get isViewed => throw _privateConstructorUsedError;

  /// Create a copy of NewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsInfoDataModelCopyWith<NewsInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoDataModelCopyWith<$Res> {
  factory $NewsInfoDataModelCopyWith(
          NewsInfoDataModel value, $Res Function(NewsInfoDataModel) then) =
      _$NewsInfoDataModelCopyWithImpl<$Res, NewsInfoDataModel>;
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      List<NewsInfoItemDataModel> list,
      bool isViewed});
}

/// @nodoc
class _$NewsInfoDataModelCopyWithImpl<$Res, $Val extends NewsInfoDataModel>
    implements $NewsInfoDataModelCopyWith<$Res> {
  _$NewsInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? list = null,
    Object? isViewed = null,
  }) {
    return _then(_value.copyWith(
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
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NewsInfoItemDataModel>,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsInfoDataModelImplCopyWith<$Res>
    implements $NewsInfoDataModelCopyWith<$Res> {
  factory _$$NewsInfoDataModelImplCopyWith(_$NewsInfoDataModelImpl value,
          $Res Function(_$NewsInfoDataModelImpl) then) =
      __$$NewsInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String r,
      String e,
      String errorMessage,
      List<NewsInfoItemDataModel> list,
      bool isViewed});
}

/// @nodoc
class __$$NewsInfoDataModelImplCopyWithImpl<$Res>
    extends _$NewsInfoDataModelCopyWithImpl<$Res, _$NewsInfoDataModelImpl>
    implements _$$NewsInfoDataModelImplCopyWith<$Res> {
  __$$NewsInfoDataModelImplCopyWithImpl(_$NewsInfoDataModelImpl _value,
      $Res Function(_$NewsInfoDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? errorMessage = null,
    Object? list = null,
    Object? isViewed = null,
  }) {
    return _then(_$NewsInfoDataModelImpl(
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
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<NewsInfoItemDataModel>,
      isViewed: null == isViewed
          ? _value.isViewed
          : isViewed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewsInfoDataModelImpl extends _NewsInfoDataModel {
  _$NewsInfoDataModelImpl(
      {required this.r,
      required this.e,
      required this.errorMessage,
      required final List<NewsInfoItemDataModel> list,
      required this.isViewed})
      : _list = list,
        super._();

  @override
  final String r;
  @override
  final String e;
  @override
  final String errorMessage;
  final List<NewsInfoItemDataModel> _list;
  @override
  List<NewsInfoItemDataModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final bool isViewed;

  @override
  String toString() {
    return 'NewsInfoDataModel(r: $r, e: $e, errorMessage: $errorMessage, list: $list, isViewed: $isViewed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.isViewed, isViewed) ||
                other.isViewed == isViewed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e, errorMessage,
      const DeepCollectionEquality().hash(_list), isViewed);

  /// Create a copy of NewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsInfoDataModelImplCopyWith<_$NewsInfoDataModelImpl> get copyWith =>
      __$$NewsInfoDataModelImplCopyWithImpl<_$NewsInfoDataModelImpl>(
          this, _$identity);
}

abstract class _NewsInfoDataModel extends NewsInfoDataModel {
  factory _NewsInfoDataModel(
      {required final String r,
      required final String e,
      required final String errorMessage,
      required final List<NewsInfoItemDataModel> list,
      required final bool isViewed}) = _$NewsInfoDataModelImpl;
  _NewsInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  String get errorMessage;
  @override
  List<NewsInfoItemDataModel> get list;
  @override
  bool get isViewed;

  /// Create a copy of NewsInfoDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsInfoDataModelImplCopyWith<_$NewsInfoDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
