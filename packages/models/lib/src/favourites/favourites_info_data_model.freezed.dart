// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_info_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesInfoDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesInfoDataModelCopyWith<FavouritesInfoDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesInfoDataModelCopyWith<$Res> {
  factory $FavouritesInfoDataModelCopyWith(FavouritesInfoDataModel value,
          $Res Function(FavouritesInfoDataModel) then) =
      _$FavouritesInfoDataModelCopyWithImpl<$Res, FavouritesInfoDataModel>;
  @useResult
  $Res call({String r, String e});
}

/// @nodoc
class _$FavouritesInfoDataModelCopyWithImpl<$Res,
        $Val extends FavouritesInfoDataModel>
    implements $FavouritesInfoDataModelCopyWith<$Res> {
  _$FavouritesInfoDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesInfoDataModelImplCopyWith<$Res>
    implements $FavouritesInfoDataModelCopyWith<$Res> {
  factory _$$FavouritesInfoDataModelImplCopyWith(
          _$FavouritesInfoDataModelImpl value,
          $Res Function(_$FavouritesInfoDataModelImpl) then) =
      __$$FavouritesInfoDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e});
}

/// @nodoc
class __$$FavouritesInfoDataModelImplCopyWithImpl<$Res>
    extends _$FavouritesInfoDataModelCopyWithImpl<$Res,
        _$FavouritesInfoDataModelImpl>
    implements _$$FavouritesInfoDataModelImplCopyWith<$Res> {
  __$$FavouritesInfoDataModelImplCopyWithImpl(
      _$FavouritesInfoDataModelImpl _value,
      $Res Function(_$FavouritesInfoDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
  }) {
    return _then(_$FavouritesInfoDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavouritesInfoDataModelImpl extends _FavouritesInfoDataModel {
  _$FavouritesInfoDataModelImpl({required this.r, required this.e}) : super._();

  @override
  final String r;
  @override
  final String e;

  @override
  String toString() {
    return 'FavouritesInfoDataModel(r: $r, e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesInfoDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesInfoDataModelImplCopyWith<_$FavouritesInfoDataModelImpl>
      get copyWith => __$$FavouritesInfoDataModelImplCopyWithImpl<
          _$FavouritesInfoDataModelImpl>(this, _$identity);
}

abstract class _FavouritesInfoDataModel extends FavouritesInfoDataModel {
  factory _FavouritesInfoDataModel(
      {required final String r,
      required final String e}) = _$FavouritesInfoDataModelImpl;
  _FavouritesInfoDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesInfoDataModelImplCopyWith<_$FavouritesInfoDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
