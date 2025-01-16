// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_products_description_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdditionalProductsDescriptionDataModel {
  String get name => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ProductDataModel> get products => throw _privateConstructorUsedError;

  /// Create a copy of AdditionalProductsDescriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdditionalProductsDescriptionDataModelCopyWith<
          AdditionalProductsDescriptionDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalProductsDescriptionDataModelCopyWith<$Res> {
  factory $AdditionalProductsDescriptionDataModelCopyWith(
          AdditionalProductsDescriptionDataModel value,
          $Res Function(AdditionalProductsDescriptionDataModel) then) =
      _$AdditionalProductsDescriptionDataModelCopyWithImpl<$Res,
          AdditionalProductsDescriptionDataModel>;
  @useResult
  $Res call(
      {String name, String errorMessage, List<ProductDataModel> products});
}

/// @nodoc
class _$AdditionalProductsDescriptionDataModelCopyWithImpl<$Res,
        $Val extends AdditionalProductsDescriptionDataModel>
    implements $AdditionalProductsDescriptionDataModelCopyWith<$Res> {
  _$AdditionalProductsDescriptionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdditionalProductsDescriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? errorMessage = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalProductsDescriptionDataModelImplCopyWith<$Res>
    implements $AdditionalProductsDescriptionDataModelCopyWith<$Res> {
  factory _$$AdditionalProductsDescriptionDataModelImplCopyWith(
          _$AdditionalProductsDescriptionDataModelImpl value,
          $Res Function(_$AdditionalProductsDescriptionDataModelImpl) then) =
      __$$AdditionalProductsDescriptionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String errorMessage, List<ProductDataModel> products});
}

/// @nodoc
class __$$AdditionalProductsDescriptionDataModelImplCopyWithImpl<$Res>
    extends _$AdditionalProductsDescriptionDataModelCopyWithImpl<$Res,
        _$AdditionalProductsDescriptionDataModelImpl>
    implements _$$AdditionalProductsDescriptionDataModelImplCopyWith<$Res> {
  __$$AdditionalProductsDescriptionDataModelImplCopyWithImpl(
      _$AdditionalProductsDescriptionDataModelImpl _value,
      $Res Function(_$AdditionalProductsDescriptionDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdditionalProductsDescriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? errorMessage = null,
    Object? products = null,
  }) {
    return _then(_$AdditionalProductsDescriptionDataModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
    ));
  }
}

/// @nodoc

class _$AdditionalProductsDescriptionDataModelImpl
    extends _AdditionalProductsDescriptionDataModel {
  _$AdditionalProductsDescriptionDataModelImpl(
      {required this.name,
      required this.errorMessage,
      required final List<ProductDataModel> products})
      : _products = products,
        super._();

  @override
  final String name;
  @override
  final String errorMessage;
  final List<ProductDataModel> _products;
  @override
  List<ProductDataModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'AdditionalProductsDescriptionDataModel(name: $name, errorMessage: $errorMessage, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalProductsDescriptionDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, errorMessage,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of AdditionalProductsDescriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalProductsDescriptionDataModelImplCopyWith<
          _$AdditionalProductsDescriptionDataModelImpl>
      get copyWith =>
          __$$AdditionalProductsDescriptionDataModelImplCopyWithImpl<
              _$AdditionalProductsDescriptionDataModelImpl>(this, _$identity);
}

abstract class _AdditionalProductsDescriptionDataModel
    extends AdditionalProductsDescriptionDataModel {
  factory _AdditionalProductsDescriptionDataModel(
          {required final String name,
          required final String errorMessage,
          required final List<ProductDataModel> products}) =
      _$AdditionalProductsDescriptionDataModelImpl;
  _AdditionalProductsDescriptionDataModel._() : super._();

  @override
  String get name;
  @override
  String get errorMessage;
  @override
  List<ProductDataModel> get products;

  /// Create a copy of AdditionalProductsDescriptionDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdditionalProductsDescriptionDataModelImplCopyWith<
          _$AdditionalProductsDescriptionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
