// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutiques_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoutiquesDataModel {
  List<BoutiqueDataModel> get data => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoutiquesDataModelCopyWith<BoutiquesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiquesDataModelCopyWith<$Res> {
  factory $BoutiquesDataModelCopyWith(
          BoutiquesDataModel value, $Res Function(BoutiquesDataModel) then) =
      _$BoutiquesDataModelCopyWithImpl<$Res, BoutiquesDataModel>;
  @useResult
  $Res call({List<BoutiqueDataModel> data, String? errorMessage});
}

/// @nodoc
class _$BoutiquesDataModelCopyWithImpl<$Res, $Val extends BoutiquesDataModel>
    implements $BoutiquesDataModelCopyWith<$Res> {
  _$BoutiquesDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueDataModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiquesDataModelImplCopyWith<$Res>
    implements $BoutiquesDataModelCopyWith<$Res> {
  factory _$$BoutiquesDataModelImplCopyWith(_$BoutiquesDataModelImpl value,
          $Res Function(_$BoutiquesDataModelImpl) then) =
      __$$BoutiquesDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BoutiqueDataModel> data, String? errorMessage});
}

/// @nodoc
class __$$BoutiquesDataModelImplCopyWithImpl<$Res>
    extends _$BoutiquesDataModelCopyWithImpl<$Res, _$BoutiquesDataModelImpl>
    implements _$$BoutiquesDataModelImplCopyWith<$Res> {
  __$$BoutiquesDataModelImplCopyWithImpl(_$BoutiquesDataModelImpl _value,
      $Res Function(_$BoutiquesDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BoutiquesDataModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueDataModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BoutiquesDataModelImpl extends _BoutiquesDataModel {
  _$BoutiquesDataModelImpl(
      {required final List<BoutiqueDataModel> data, this.errorMessage})
      : _data = data,
        super._();

  final List<BoutiqueDataModel> _data;
  @override
  List<BoutiqueDataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BoutiquesDataModel(data: $data, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiquesDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiquesDataModelImplCopyWith<_$BoutiquesDataModelImpl> get copyWith =>
      __$$BoutiquesDataModelImplCopyWithImpl<_$BoutiquesDataModelImpl>(
          this, _$identity);
}

abstract class _BoutiquesDataModel extends BoutiquesDataModel {
  factory _BoutiquesDataModel(
      {required final List<BoutiqueDataModel> data,
      final String? errorMessage}) = _$BoutiquesDataModelImpl;
  _BoutiquesDataModel._() : super._();

  @override
  List<BoutiqueDataModel> get data;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$BoutiquesDataModelImplCopyWith<_$BoutiquesDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
