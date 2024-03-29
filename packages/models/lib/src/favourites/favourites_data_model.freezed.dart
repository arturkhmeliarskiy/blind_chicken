// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavouritesDataModel {
  String get code => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  List<String> get favorites => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouritesDataModelCopyWith<FavouritesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesDataModelCopyWith<$Res> {
  factory $FavouritesDataModelCopyWith(
          FavouritesDataModel value, $Res Function(FavouritesDataModel) then) =
      _$FavouritesDataModelCopyWithImpl<$Res, FavouritesDataModel>;
  @useResult
  $Res call(
      {String code, String sku, List<String> favorites, String errorMessage});
}

/// @nodoc
class _$FavouritesDataModelCopyWithImpl<$Res, $Val extends FavouritesDataModel>
    implements $FavouritesDataModelCopyWith<$Res> {
  _$FavouritesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? favorites = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouritesDataModelImplCopyWith<$Res>
    implements $FavouritesDataModelCopyWith<$Res> {
  factory _$$FavouritesDataModelImplCopyWith(_$FavouritesDataModelImpl value,
          $Res Function(_$FavouritesDataModelImpl) then) =
      __$$FavouritesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code, String sku, List<String> favorites, String errorMessage});
}

/// @nodoc
class __$$FavouritesDataModelImplCopyWithImpl<$Res>
    extends _$FavouritesDataModelCopyWithImpl<$Res, _$FavouritesDataModelImpl>
    implements _$$FavouritesDataModelImplCopyWith<$Res> {
  __$$FavouritesDataModelImplCopyWithImpl(_$FavouritesDataModelImpl _value,
      $Res Function(_$FavouritesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? sku = null,
    Object? favorites = null,
    Object? errorMessage = null,
  }) {
    return _then(_$FavouritesDataModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavouritesDataModelImpl extends _FavouritesDataModel {
  _$FavouritesDataModelImpl(
      {required this.code,
      required this.sku,
      required final List<String> favorites,
      required this.errorMessage})
      : _favorites = favorites,
        super._();

  @override
  final String code;
  @override
  final String sku;
  final List<String> _favorites;
  @override
  List<String> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FavouritesDataModel(code: $code, sku: $sku, favorites: $favorites, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouritesDataModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, sku,
      const DeepCollectionEquality().hash(_favorites), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouritesDataModelImplCopyWith<_$FavouritesDataModelImpl> get copyWith =>
      __$$FavouritesDataModelImplCopyWithImpl<_$FavouritesDataModelImpl>(
          this, _$identity);
}

abstract class _FavouritesDataModel extends FavouritesDataModel {
  factory _FavouritesDataModel(
      {required final String code,
      required final String sku,
      required final List<String> favorites,
      required final String errorMessage}) = _$FavouritesDataModelImpl;
  _FavouritesDataModel._() : super._();

  @override
  String get code;
  @override
  String get sku;
  @override
  List<String> get favorites;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$FavouritesDataModelImplCopyWith<_$FavouritesDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
