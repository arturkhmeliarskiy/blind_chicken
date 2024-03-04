// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_location_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchLocationDataModel {
  SearchContextDataModel get searchContext =>
      throw _privateConstructorUsedError;
  List<SearchLocationInfoDataModel> get result =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchLocationDataModelCopyWith<SearchLocationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchLocationDataModelCopyWith<$Res> {
  factory $SearchLocationDataModelCopyWith(SearchLocationDataModel value,
          $Res Function(SearchLocationDataModel) then) =
      _$SearchLocationDataModelCopyWithImpl<$Res, SearchLocationDataModel>;
  @useResult
  $Res call(
      {SearchContextDataModel searchContext,
      List<SearchLocationInfoDataModel> result});

  $SearchContextDataModelCopyWith<$Res> get searchContext;
}

/// @nodoc
class _$SearchLocationDataModelCopyWithImpl<$Res,
        $Val extends SearchLocationDataModel>
    implements $SearchLocationDataModelCopyWith<$Res> {
  _$SearchLocationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContext = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      searchContext: null == searchContext
          ? _value.searchContext
          : searchContext // ignore: cast_nullable_to_non_nullable
              as SearchContextDataModel,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SearchLocationInfoDataModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchContextDataModelCopyWith<$Res> get searchContext {
    return $SearchContextDataModelCopyWith<$Res>(_value.searchContext, (value) {
      return _then(_value.copyWith(searchContext: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchLocationDataModelImplCopyWith<$Res>
    implements $SearchLocationDataModelCopyWith<$Res> {
  factory _$$SearchLocationDataModelImplCopyWith(
          _$SearchLocationDataModelImpl value,
          $Res Function(_$SearchLocationDataModelImpl) then) =
      __$$SearchLocationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchContextDataModel searchContext,
      List<SearchLocationInfoDataModel> result});

  @override
  $SearchContextDataModelCopyWith<$Res> get searchContext;
}

/// @nodoc
class __$$SearchLocationDataModelImplCopyWithImpl<$Res>
    extends _$SearchLocationDataModelCopyWithImpl<$Res,
        _$SearchLocationDataModelImpl>
    implements _$$SearchLocationDataModelImplCopyWith<$Res> {
  __$$SearchLocationDataModelImplCopyWithImpl(
      _$SearchLocationDataModelImpl _value,
      $Res Function(_$SearchLocationDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchContext = null,
    Object? result = null,
  }) {
    return _then(_$SearchLocationDataModelImpl(
      searchContext: null == searchContext
          ? _value.searchContext
          : searchContext // ignore: cast_nullable_to_non_nullable
              as SearchContextDataModel,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SearchLocationInfoDataModel>,
    ));
  }
}

/// @nodoc

class _$SearchLocationDataModelImpl extends _SearchLocationDataModel {
  _$SearchLocationDataModelImpl(
      {required this.searchContext,
      required final List<SearchLocationInfoDataModel> result})
      : _result = result,
        super._();

  @override
  final SearchContextDataModel searchContext;
  final List<SearchLocationInfoDataModel> _result;
  @override
  List<SearchLocationInfoDataModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'SearchLocationDataModel(searchContext: $searchContext, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationDataModelImpl &&
            (identical(other.searchContext, searchContext) ||
                other.searchContext == searchContext) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, searchContext, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationDataModelImplCopyWith<_$SearchLocationDataModelImpl>
      get copyWith => __$$SearchLocationDataModelImplCopyWithImpl<
          _$SearchLocationDataModelImpl>(this, _$identity);
}

abstract class _SearchLocationDataModel extends SearchLocationDataModel {
  factory _SearchLocationDataModel(
          {required final SearchContextDataModel searchContext,
          required final List<SearchLocationInfoDataModel> result}) =
      _$SearchLocationDataModelImpl;
  _SearchLocationDataModel._() : super._();

  @override
  SearchContextDataModel get searchContext;
  @override
  List<SearchLocationInfoDataModel> get result;
  @override
  @JsonKey(ignore: true)
  _$$SearchLocationDataModelImplCopyWith<_$SearchLocationDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
