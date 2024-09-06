// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_card_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GiftCardDataModel {
  String get r => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GiftCardDataModelCopyWith<GiftCardDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCardDataModelCopyWith<$Res> {
  factory $GiftCardDataModelCopyWith(
          GiftCardDataModel value, $Res Function(GiftCardDataModel) then) =
      _$GiftCardDataModelCopyWithImpl<$Res, GiftCardDataModel>;
  @useResult
  $Res call({String r, String errorMessage});
}

/// @nodoc
class _$GiftCardDataModelCopyWithImpl<$Res, $Val extends GiftCardDataModel>
    implements $GiftCardDataModelCopyWith<$Res> {
  _$GiftCardDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftCardDataModelImplCopyWith<$Res>
    implements $GiftCardDataModelCopyWith<$Res> {
  factory _$$GiftCardDataModelImplCopyWith(_$GiftCardDataModelImpl value,
          $Res Function(_$GiftCardDataModelImpl) then) =
      __$$GiftCardDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String errorMessage});
}

/// @nodoc
class __$$GiftCardDataModelImplCopyWithImpl<$Res>
    extends _$GiftCardDataModelCopyWithImpl<$Res, _$GiftCardDataModelImpl>
    implements _$$GiftCardDataModelImplCopyWith<$Res> {
  __$$GiftCardDataModelImplCopyWithImpl(_$GiftCardDataModelImpl _value,
      $Res Function(_$GiftCardDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? errorMessage = null,
  }) {
    return _then(_$GiftCardDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GiftCardDataModelImpl extends _GiftCardDataModel {
  _$GiftCardDataModelImpl({required this.r, required this.errorMessage})
      : super._();

  @override
  final String r;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'GiftCardDataModel(r: $r, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftCardDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftCardDataModelImplCopyWith<_$GiftCardDataModelImpl> get copyWith =>
      __$$GiftCardDataModelImplCopyWithImpl<_$GiftCardDataModelImpl>(
          this, _$identity);
}

abstract class _GiftCardDataModel extends GiftCardDataModel {
  factory _GiftCardDataModel(
      {required final String r,
      required final String errorMessage}) = _$GiftCardDataModelImpl;
  _GiftCardDataModel._() : super._();

  @override
  String get r;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$GiftCardDataModelImplCopyWith<_$GiftCardDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
