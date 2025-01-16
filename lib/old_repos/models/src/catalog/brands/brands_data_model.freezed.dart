// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandsDataModel {
  List<BrandDataModel> get brands => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of BrandsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandsDataModelCopyWith<BrandsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsDataModelCopyWith<$Res> {
  factory $BrandsDataModelCopyWith(
          BrandsDataModel value, $Res Function(BrandsDataModel) then) =
      _$BrandsDataModelCopyWithImpl<$Res, BrandsDataModel>;
  @useResult
  $Res call({List<BrandDataModel> brands, String errorMessage});
}

/// @nodoc
class _$BrandsDataModelCopyWithImpl<$Res, $Val extends BrandsDataModel>
    implements $BrandsDataModelCopyWith<$Res> {
  _$BrandsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandDataModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsDataModelImplCopyWith<$Res>
    implements $BrandsDataModelCopyWith<$Res> {
  factory _$$BrandsDataModelImplCopyWith(_$BrandsDataModelImpl value,
          $Res Function(_$BrandsDataModelImpl) then) =
      __$$BrandsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandDataModel> brands, String errorMessage});
}

/// @nodoc
class __$$BrandsDataModelImplCopyWithImpl<$Res>
    extends _$BrandsDataModelCopyWithImpl<$Res, _$BrandsDataModelImpl>
    implements _$$BrandsDataModelImplCopyWith<$Res> {
  __$$BrandsDataModelImplCopyWithImpl(
      _$BrandsDataModelImpl _value, $Res Function(_$BrandsDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
    Object? errorMessage = null,
  }) {
    return _then(_$BrandsDataModelImpl(
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandDataModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BrandsDataModelImpl extends _BrandsDataModel {
  _$BrandsDataModelImpl(
      {required final List<BrandDataModel> brands, required this.errorMessage})
      : _brands = brands,
        super._();

  final List<BrandDataModel> _brands;
  @override
  List<BrandDataModel> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BrandsDataModel(brands: $brands, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsDataModelImpl &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_brands), errorMessage);

  /// Create a copy of BrandsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsDataModelImplCopyWith<_$BrandsDataModelImpl> get copyWith =>
      __$$BrandsDataModelImplCopyWithImpl<_$BrandsDataModelImpl>(
          this, _$identity);
}

abstract class _BrandsDataModel extends BrandsDataModel {
  factory _BrandsDataModel(
      {required final List<BrandDataModel> brands,
      required final String errorMessage}) = _$BrandsDataModelImpl;
  _BrandsDataModel._() : super._();

  @override
  List<BrandDataModel> get brands;
  @override
  String get errorMessage;

  /// Create a copy of BrandsDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandsDataModelImplCopyWith<_$BrandsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
