// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutique_info_detail_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BoutiqueInfoDetailDataModel {
  String get r => throw _privateConstructorUsedError;
  String get e => throw _privateConstructorUsedError;
  List<BoutiqueCategoryItemDataModel> get category =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoutiqueInfoDetailDataModelCopyWith<BoutiqueInfoDetailDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiqueInfoDetailDataModelCopyWith<$Res> {
  factory $BoutiqueInfoDetailDataModelCopyWith(
          BoutiqueInfoDetailDataModel value,
          $Res Function(BoutiqueInfoDetailDataModel) then) =
      _$BoutiqueInfoDetailDataModelCopyWithImpl<$Res,
          BoutiqueInfoDetailDataModel>;
  @useResult
  $Res call({String r, String e, List<BoutiqueCategoryItemDataModel> category});
}

/// @nodoc
class _$BoutiqueInfoDetailDataModelCopyWithImpl<$Res,
        $Val extends BoutiqueInfoDetailDataModel>
    implements $BoutiqueInfoDetailDataModelCopyWith<$Res> {
  _$BoutiqueInfoDetailDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? category = null,
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
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueCategoryItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoutiqueInfoDetailDataModelImplCopyWith<$Res>
    implements $BoutiqueInfoDetailDataModelCopyWith<$Res> {
  factory _$$BoutiqueInfoDetailDataModelImplCopyWith(
          _$BoutiqueInfoDetailDataModelImpl value,
          $Res Function(_$BoutiqueInfoDetailDataModelImpl) then) =
      __$$BoutiqueInfoDetailDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String r, String e, List<BoutiqueCategoryItemDataModel> category});
}

/// @nodoc
class __$$BoutiqueInfoDetailDataModelImplCopyWithImpl<$Res>
    extends _$BoutiqueInfoDetailDataModelCopyWithImpl<$Res,
        _$BoutiqueInfoDetailDataModelImpl>
    implements _$$BoutiqueInfoDetailDataModelImplCopyWith<$Res> {
  __$$BoutiqueInfoDetailDataModelImplCopyWithImpl(
      _$BoutiqueInfoDetailDataModelImpl _value,
      $Res Function(_$BoutiqueInfoDetailDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r = null,
    Object? e = null,
    Object? category = null,
  }) {
    return _then(_$BoutiqueInfoDetailDataModelImpl(
      r: null == r
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as String,
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueCategoryItemDataModel>,
    ));
  }
}

/// @nodoc

class _$BoutiqueInfoDetailDataModelImpl extends _BoutiqueInfoDetailDataModel {
  _$BoutiqueInfoDetailDataModelImpl(
      {required this.r,
      required this.e,
      required final List<BoutiqueCategoryItemDataModel> category})
      : _category = category,
        super._();

  @override
  final String r;
  @override
  final String e;
  final List<BoutiqueCategoryItemDataModel> _category;
  @override
  List<BoutiqueCategoryItemDataModel> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'BoutiqueInfoDetailDataModel(r: $r, e: $e, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoutiqueInfoDetailDataModelImpl &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.e, e) || other.e == e) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, r, e, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoutiqueInfoDetailDataModelImplCopyWith<_$BoutiqueInfoDetailDataModelImpl>
      get copyWith => __$$BoutiqueInfoDetailDataModelImplCopyWithImpl<
          _$BoutiqueInfoDetailDataModelImpl>(this, _$identity);
}

abstract class _BoutiqueInfoDetailDataModel
    extends BoutiqueInfoDetailDataModel {
  factory _BoutiqueInfoDetailDataModel(
          {required final String r,
          required final String e,
          required final List<BoutiqueCategoryItemDataModel> category}) =
      _$BoutiqueInfoDetailDataModelImpl;
  _BoutiqueInfoDetailDataModel._() : super._();

  @override
  String get r;
  @override
  String get e;
  @override
  List<BoutiqueCategoryItemDataModel> get category;
  @override
  @JsonKey(ignore: true)
  _$$BoutiqueInfoDetailDataModelImplCopyWith<_$BoutiqueInfoDetailDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
