// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoEventCopyWith<$Res> {
  factory $NewsInfoEventCopyWith(
          NewsInfoEvent value, $Res Function(NewsInfoEvent) then) =
      _$NewsInfoEventCopyWithImpl<$Res, NewsInfoEvent>;
}

/// @nodoc
class _$NewsInfoEventCopyWithImpl<$Res, $Val extends NewsInfoEvent>
    implements $NewsInfoEventCopyWith<$Res> {
  _$NewsInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$NewsInfoEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsInfoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'NewsInfoEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements NewsInfoEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$NewsInfoState {
  BlocAction? get action => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<NewsInfoItemDataModel> get listNews =>
      throw _privateConstructorUsedError;

  /// Create a copy of NewsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsInfoStateCopyWith<NewsInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoStateCopyWith<$Res> {
  factory $NewsInfoStateCopyWith(
          NewsInfoState value, $Res Function(NewsInfoState) then) =
      _$NewsInfoStateCopyWithImpl<$Res, NewsInfoState>;
  @useResult
  $Res call(
      {BlocAction? action,
      bool isLoading,
      List<NewsInfoItemDataModel> listNews});
}

/// @nodoc
class _$NewsInfoStateCopyWithImpl<$Res, $Val extends NewsInfoState>
    implements $NewsInfoStateCopyWith<$Res> {
  _$NewsInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? isLoading = null,
    Object? listNews = null,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listNews: null == listNews
          ? _value.listNews
          : listNews // ignore: cast_nullable_to_non_nullable
              as List<NewsInfoItemDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartStateImplCopyWith<$Res>
    implements $NewsInfoStateCopyWith<$Res> {
  factory _$$StartStateImplCopyWith(
          _$StartStateImpl value, $Res Function(_$StartStateImpl) then) =
      __$$StartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocAction? action,
      bool isLoading,
      List<NewsInfoItemDataModel> listNews});
}

/// @nodoc
class __$$StartStateImplCopyWithImpl<$Res>
    extends _$NewsInfoStateCopyWithImpl<$Res, _$StartStateImpl>
    implements _$$StartStateImplCopyWith<$Res> {
  __$$StartStateImplCopyWithImpl(
      _$StartStateImpl _value, $Res Function(_$StartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? isLoading = null,
    Object? listNews = null,
  }) {
    return _then(_$StartStateImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listNews: null == listNews
          ? _value._listNews
          : listNews // ignore: cast_nullable_to_non_nullable
              as List<NewsInfoItemDataModel>,
    ));
  }
}

/// @nodoc

class _$StartStateImpl implements _StartState {
  _$StartStateImpl(
      {this.action,
      this.isLoading = true,
      final List<NewsInfoItemDataModel> listNews = const []})
      : _listNews = listNews;

  @override
  final BlocAction? action;
  @override
  @JsonKey()
  final bool isLoading;
  final List<NewsInfoItemDataModel> _listNews;
  @override
  @JsonKey()
  List<NewsInfoItemDataModel> get listNews {
    if (_listNews is EqualUnmodifiableListView) return _listNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listNews);
  }

  @override
  String toString() {
    return 'NewsInfoState(action: $action, isLoading: $isLoading, listNews: $listNews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartStateImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._listNews, _listNews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, isLoading,
      const DeepCollectionEquality().hash(_listNews));

  /// Create a copy of NewsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartStateImplCopyWith<_$StartStateImpl> get copyWith =>
      __$$StartStateImplCopyWithImpl<_$StartStateImpl>(this, _$identity);
}

abstract class _StartState implements NewsInfoState {
  factory _StartState(
      {final BlocAction? action,
      final bool isLoading,
      final List<NewsInfoItemDataModel> listNews}) = _$StartStateImpl;

  @override
  BlocAction? get action;
  @override
  bool get isLoading;
  @override
  List<NewsInfoItemDataModel> get listNews;

  /// Create a copy of NewsInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartStateImplCopyWith<_$StartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
