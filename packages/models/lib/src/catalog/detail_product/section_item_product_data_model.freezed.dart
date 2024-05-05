// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_item_product_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionItemProductDataModel {
  String get n => throw _privateConstructorUsedError;
  String get u => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionItemProductDataModelCopyWith<SectionItemProductDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionItemProductDataModelCopyWith<$Res> {
  factory $SectionItemProductDataModelCopyWith(
          SectionItemProductDataModel value,
          $Res Function(SectionItemProductDataModel) then) =
      _$SectionItemProductDataModelCopyWithImpl<$Res,
          SectionItemProductDataModel>;
  @useResult
  $Res call({String n, String u});
}

/// @nodoc
class _$SectionItemProductDataModelCopyWithImpl<$Res,
        $Val extends SectionItemProductDataModel>
    implements $SectionItemProductDataModelCopyWith<$Res> {
  _$SectionItemProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? u = null,
  }) {
    return _then(_value.copyWith(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionItemProductDataModelImplCopyWith<$Res>
    implements $SectionItemProductDataModelCopyWith<$Res> {
  factory _$$SectionItemProductDataModelImplCopyWith(
          _$SectionItemProductDataModelImpl value,
          $Res Function(_$SectionItemProductDataModelImpl) then) =
      __$$SectionItemProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String n, String u});
}

/// @nodoc
class __$$SectionItemProductDataModelImplCopyWithImpl<$Res>
    extends _$SectionItemProductDataModelCopyWithImpl<$Res,
        _$SectionItemProductDataModelImpl>
    implements _$$SectionItemProductDataModelImplCopyWith<$Res> {
  __$$SectionItemProductDataModelImplCopyWithImpl(
      _$SectionItemProductDataModelImpl _value,
      $Res Function(_$SectionItemProductDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? n = null,
    Object? u = null,
  }) {
    return _then(_$SectionItemProductDataModelImpl(
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as String,
      u: null == u
          ? _value.u
          : u // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SectionItemProductDataModelImpl extends _SectionItemProductDataModel {
  _$SectionItemProductDataModelImpl({required this.n, required this.u})
      : super._();

  @override
  final String n;
  @override
  final String u;

  @override
  String toString() {
    return 'SectionItemProductDataModel(n: $n, u: $u)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionItemProductDataModelImpl &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.u, u) || other.u == u));
  }

  @override
  int get hashCode => Object.hash(runtimeType, n, u);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionItemProductDataModelImplCopyWith<_$SectionItemProductDataModelImpl>
      get copyWith => __$$SectionItemProductDataModelImplCopyWithImpl<
          _$SectionItemProductDataModelImpl>(this, _$identity);
}

abstract class _SectionItemProductDataModel
    extends SectionItemProductDataModel {
  factory _SectionItemProductDataModel(
      {required final String n,
      required final String u}) = _$SectionItemProductDataModelImpl;
  _SectionItemProductDataModel._() : super._();

  @override
  String get n;
  @override
  String get u;
  @override
  @JsonKey(ignore: true)
  _$$SectionItemProductDataModelImplCopyWith<_$SectionItemProductDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
