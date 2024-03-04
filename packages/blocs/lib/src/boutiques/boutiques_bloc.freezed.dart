// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boutiques_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoutiquesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(String uid) getInfoBoutique,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(String uid)? getInfoBoutique,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(String uid)? getInfoBoutique,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBoutiquesEvent value) preloadData,
    required TResult Function(GetInfoBoutiquesEvent value) getInfoBoutique,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesEvent value)? preloadData,
    TResult? Function(GetInfoBoutiquesEvent value)? getInfoBoutique,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesEvent value)? preloadData,
    TResult Function(GetInfoBoutiquesEvent value)? getInfoBoutique,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiquesEventCopyWith<$Res> {
  factory $BoutiquesEventCopyWith(
          BoutiquesEvent value, $Res Function(BoutiquesEvent) then) =
      _$BoutiquesEventCopyWithImpl<$Res, BoutiquesEvent>;
}

/// @nodoc
class _$BoutiquesEventCopyWithImpl<$Res, $Val extends BoutiquesEvent>
    implements $BoutiquesEventCopyWith<$Res> {
  _$BoutiquesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitBoutiquesEventImplCopyWith<$Res> {
  factory _$$InitBoutiquesEventImplCopyWith(_$InitBoutiquesEventImpl value,
          $Res Function(_$InitBoutiquesEventImpl) then) =
      __$$InitBoutiquesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitBoutiquesEventImplCopyWithImpl<$Res>
    extends _$BoutiquesEventCopyWithImpl<$Res, _$InitBoutiquesEventImpl>
    implements _$$InitBoutiquesEventImplCopyWith<$Res> {
  __$$InitBoutiquesEventImplCopyWithImpl(_$InitBoutiquesEventImpl _value,
      $Res Function(_$InitBoutiquesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitBoutiquesEventImpl implements InitBoutiquesEvent {
  const _$InitBoutiquesEventImpl();

  @override
  String toString() {
    return 'BoutiquesEvent.preloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitBoutiquesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(String uid) getInfoBoutique,
  }) {
    return preloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(String uid)? getInfoBoutique,
  }) {
    return preloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(String uid)? getInfoBoutique,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBoutiquesEvent value) preloadData,
    required TResult Function(GetInfoBoutiquesEvent value) getInfoBoutique,
  }) {
    return preloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesEvent value)? preloadData,
    TResult? Function(GetInfoBoutiquesEvent value)? getInfoBoutique,
  }) {
    return preloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesEvent value)? preloadData,
    TResult Function(GetInfoBoutiquesEvent value)? getInfoBoutique,
    required TResult orElse(),
  }) {
    if (preloadData != null) {
      return preloadData(this);
    }
    return orElse();
  }
}

abstract class InitBoutiquesEvent implements BoutiquesEvent {
  const factory InitBoutiquesEvent() = _$InitBoutiquesEventImpl;
}

/// @nodoc
abstract class _$$GetInfoBoutiquesEventImplCopyWith<$Res> {
  factory _$$GetInfoBoutiquesEventImplCopyWith(
          _$GetInfoBoutiquesEventImpl value,
          $Res Function(_$GetInfoBoutiquesEventImpl) then) =
      __$$GetInfoBoutiquesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$GetInfoBoutiquesEventImplCopyWithImpl<$Res>
    extends _$BoutiquesEventCopyWithImpl<$Res, _$GetInfoBoutiquesEventImpl>
    implements _$$GetInfoBoutiquesEventImplCopyWith<$Res> {
  __$$GetInfoBoutiquesEventImplCopyWithImpl(_$GetInfoBoutiquesEventImpl _value,
      $Res Function(_$GetInfoBoutiquesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$GetInfoBoutiquesEventImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInfoBoutiquesEventImpl implements GetInfoBoutiquesEvent {
  const _$GetInfoBoutiquesEventImpl({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'BoutiquesEvent.getInfoBoutique(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInfoBoutiquesEventImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInfoBoutiquesEventImplCopyWith<_$GetInfoBoutiquesEventImpl>
      get copyWith => __$$GetInfoBoutiquesEventImplCopyWithImpl<
          _$GetInfoBoutiquesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() preloadData,
    required TResult Function(String uid) getInfoBoutique,
  }) {
    return getInfoBoutique(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? preloadData,
    TResult? Function(String uid)? getInfoBoutique,
  }) {
    return getInfoBoutique?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? preloadData,
    TResult Function(String uid)? getInfoBoutique,
    required TResult orElse(),
  }) {
    if (getInfoBoutique != null) {
      return getInfoBoutique(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBoutiquesEvent value) preloadData,
    required TResult Function(GetInfoBoutiquesEvent value) getInfoBoutique,
  }) {
    return getInfoBoutique(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesEvent value)? preloadData,
    TResult? Function(GetInfoBoutiquesEvent value)? getInfoBoutique,
  }) {
    return getInfoBoutique?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesEvent value)? preloadData,
    TResult Function(GetInfoBoutiquesEvent value)? getInfoBoutique,
    required TResult orElse(),
  }) {
    if (getInfoBoutique != null) {
      return getInfoBoutique(this);
    }
    return orElse();
  }
}

abstract class GetInfoBoutiquesEvent implements BoutiquesEvent {
  const factory GetInfoBoutiquesEvent({required final String uid}) =
      _$GetInfoBoutiquesEventImpl;

  String get uid;
  @JsonKey(ignore: true)
  _$$GetInfoBoutiquesEventImplCopyWith<_$GetInfoBoutiquesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BoutiquesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBoutiquesState value) init,
    required TResult Function(LoadingBoutiquesState value) load,
    required TResult Function(PreloadDataCompletedBoutiquesState value)
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesState value)? init,
    TResult? Function(LoadingBoutiquesState value)? load,
    TResult? Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesState value)? init,
    TResult Function(LoadingBoutiquesState value)? load,
    TResult Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoutiquesStateCopyWith<$Res> {
  factory $BoutiquesStateCopyWith(
          BoutiquesState value, $Res Function(BoutiquesState) then) =
      _$BoutiquesStateCopyWithImpl<$Res, BoutiquesState>;
}

/// @nodoc
class _$BoutiquesStateCopyWithImpl<$Res, $Val extends BoutiquesState>
    implements $BoutiquesStateCopyWith<$Res> {
  _$BoutiquesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitBoutiquesStateImplCopyWith<$Res> {
  factory _$$InitBoutiquesStateImplCopyWith(_$InitBoutiquesStateImpl value,
          $Res Function(_$InitBoutiquesStateImpl) then) =
      __$$InitBoutiquesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitBoutiquesStateImplCopyWithImpl<$Res>
    extends _$BoutiquesStateCopyWithImpl<$Res, _$InitBoutiquesStateImpl>
    implements _$$InitBoutiquesStateImplCopyWith<$Res> {
  __$$InitBoutiquesStateImplCopyWithImpl(_$InitBoutiquesStateImpl _value,
      $Res Function(_$InitBoutiquesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitBoutiquesStateImpl implements InitBoutiquesState {
  const _$InitBoutiquesStateImpl();

  @override
  String toString() {
    return 'BoutiquesState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitBoutiquesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)
        preloadDataCompleted,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
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
    required TResult Function(InitBoutiquesState value) init,
    required TResult Function(LoadingBoutiquesState value) load,
    required TResult Function(PreloadDataCompletedBoutiquesState value)
        preloadDataCompleted,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesState value)? init,
    TResult? Function(LoadingBoutiquesState value)? load,
    TResult? Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesState value)? init,
    TResult Function(LoadingBoutiquesState value)? load,
    TResult Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitBoutiquesState implements BoutiquesState {
  const factory InitBoutiquesState() = _$InitBoutiquesStateImpl;
}

/// @nodoc
abstract class _$$LoadingBoutiquesStateImplCopyWith<$Res> {
  factory _$$LoadingBoutiquesStateImplCopyWith(
          _$LoadingBoutiquesStateImpl value,
          $Res Function(_$LoadingBoutiquesStateImpl) then) =
      __$$LoadingBoutiquesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBoutiquesStateImplCopyWithImpl<$Res>
    extends _$BoutiquesStateCopyWithImpl<$Res, _$LoadingBoutiquesStateImpl>
    implements _$$LoadingBoutiquesStateImplCopyWith<$Res> {
  __$$LoadingBoutiquesStateImplCopyWithImpl(_$LoadingBoutiquesStateImpl _value,
      $Res Function(_$LoadingBoutiquesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingBoutiquesStateImpl implements LoadingBoutiquesState {
  const _$LoadingBoutiquesStateImpl();

  @override
  String toString() {
    return 'BoutiquesState.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingBoutiquesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)
        preloadDataCompleted,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBoutiquesState value) init,
    required TResult Function(LoadingBoutiquesState value) load,
    required TResult Function(PreloadDataCompletedBoutiquesState value)
        preloadDataCompleted,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesState value)? init,
    TResult? Function(LoadingBoutiquesState value)? load,
    TResult? Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesState value)? init,
    TResult Function(LoadingBoutiquesState value)? load,
    TResult Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadingBoutiquesState implements BoutiquesState {
  const factory LoadingBoutiquesState() = _$LoadingBoutiquesStateImpl;
}

/// @nodoc
abstract class _$$PreloadDataCompletedBoutiquesStateImplCopyWith<$Res> {
  factory _$$PreloadDataCompletedBoutiquesStateImplCopyWith(
          _$PreloadDataCompletedBoutiquesStateImpl value,
          $Res Function(_$PreloadDataCompletedBoutiquesStateImpl) then) =
      __$$PreloadDataCompletedBoutiquesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BoutiqueDataModel> boutiques,
      List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
      BoutiqueDataInfoDataModel? boutiqueDetails});

  $BoutiqueDataInfoDataModelCopyWith<$Res>? get boutiqueDetails;
}

/// @nodoc
class __$$PreloadDataCompletedBoutiquesStateImplCopyWithImpl<$Res>
    extends _$BoutiquesStateCopyWithImpl<$Res,
        _$PreloadDataCompletedBoutiquesStateImpl>
    implements _$$PreloadDataCompletedBoutiquesStateImplCopyWith<$Res> {
  __$$PreloadDataCompletedBoutiquesStateImplCopyWithImpl(
      _$PreloadDataCompletedBoutiquesStateImpl _value,
      $Res Function(_$PreloadDataCompletedBoutiquesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boutiques = null,
    Object? boutiqueInfo = freezed,
    Object? boutiqueDetails = freezed,
  }) {
    return _then(_$PreloadDataCompletedBoutiquesStateImpl(
      boutiques: null == boutiques
          ? _value._boutiques
          : boutiques // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueDataModel>,
      boutiqueInfo: freezed == boutiqueInfo
          ? _value._boutiqueInfo
          : boutiqueInfo // ignore: cast_nullable_to_non_nullable
              as List<BoutiqueCategoryItemDataModel>?,
      boutiqueDetails: freezed == boutiqueDetails
          ? _value.boutiqueDetails
          : boutiqueDetails // ignore: cast_nullable_to_non_nullable
              as BoutiqueDataInfoDataModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BoutiqueDataInfoDataModelCopyWith<$Res>? get boutiqueDetails {
    if (_value.boutiqueDetails == null) {
      return null;
    }

    return $BoutiqueDataInfoDataModelCopyWith<$Res>(_value.boutiqueDetails!,
        (value) {
      return _then(_value.copyWith(boutiqueDetails: value));
    });
  }
}

/// @nodoc

class _$PreloadDataCompletedBoutiquesStateImpl
    implements PreloadDataCompletedBoutiquesState {
  const _$PreloadDataCompletedBoutiquesStateImpl(
      {required final List<BoutiqueDataModel> boutiques,
      final List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
      this.boutiqueDetails})
      : _boutiques = boutiques,
        _boutiqueInfo = boutiqueInfo;

  final List<BoutiqueDataModel> _boutiques;
  @override
  List<BoutiqueDataModel> get boutiques {
    if (_boutiques is EqualUnmodifiableListView) return _boutiques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boutiques);
  }

  final List<BoutiqueCategoryItemDataModel>? _boutiqueInfo;
  @override
  List<BoutiqueCategoryItemDataModel>? get boutiqueInfo {
    final value = _boutiqueInfo;
    if (value == null) return null;
    if (_boutiqueInfo is EqualUnmodifiableListView) return _boutiqueInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BoutiqueDataInfoDataModel? boutiqueDetails;

  @override
  String toString() {
    return 'BoutiquesState.preloadDataCompleted(boutiques: $boutiques, boutiqueInfo: $boutiqueInfo, boutiqueDetails: $boutiqueDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadDataCompletedBoutiquesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._boutiques, _boutiques) &&
            const DeepCollectionEquality()
                .equals(other._boutiqueInfo, _boutiqueInfo) &&
            (identical(other.boutiqueDetails, boutiqueDetails) ||
                other.boutiqueDetails == boutiqueDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_boutiques),
      const DeepCollectionEquality().hash(_boutiqueInfo),
      boutiqueDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadDataCompletedBoutiquesStateImplCopyWith<
          _$PreloadDataCompletedBoutiquesStateImpl>
      get copyWith => __$$PreloadDataCompletedBoutiquesStateImplCopyWithImpl<
          _$PreloadDataCompletedBoutiquesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() load,
    required TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(boutiques, boutiqueInfo, boutiqueDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? load,
    TResult? Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(boutiques, boutiqueInfo, boutiqueDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? load,
    TResult Function(
            List<BoutiqueDataModel> boutiques,
            List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
            BoutiqueDataInfoDataModel? boutiqueDetails)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(boutiques, boutiqueInfo, boutiqueDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitBoutiquesState value) init,
    required TResult Function(LoadingBoutiquesState value) load,
    required TResult Function(PreloadDataCompletedBoutiquesState value)
        preloadDataCompleted,
  }) {
    return preloadDataCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitBoutiquesState value)? init,
    TResult? Function(LoadingBoutiquesState value)? load,
    TResult? Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
  }) {
    return preloadDataCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitBoutiquesState value)? init,
    TResult Function(LoadingBoutiquesState value)? load,
    TResult Function(PreloadDataCompletedBoutiquesState value)?
        preloadDataCompleted,
    required TResult orElse(),
  }) {
    if (preloadDataCompleted != null) {
      return preloadDataCompleted(this);
    }
    return orElse();
  }
}

abstract class PreloadDataCompletedBoutiquesState implements BoutiquesState {
  const factory PreloadDataCompletedBoutiquesState(
          {required final List<BoutiqueDataModel> boutiques,
          final List<BoutiqueCategoryItemDataModel>? boutiqueInfo,
          final BoutiqueDataInfoDataModel? boutiqueDetails}) =
      _$PreloadDataCompletedBoutiquesStateImpl;

  List<BoutiqueDataModel> get boutiques;
  List<BoutiqueCategoryItemDataModel>? get boutiqueInfo;
  BoutiqueDataInfoDataModel? get boutiqueDetails;
  @JsonKey(ignore: true)
  _$$PreloadDataCompletedBoutiquesStateImplCopyWith<
          _$PreloadDataCompletedBoutiquesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
