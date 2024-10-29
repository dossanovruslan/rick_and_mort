// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_detail_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersDetailScreenEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCharactersDetailsData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCharactersDetailsData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCharactersDetailsData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CharactersDetailScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersDetailScreenEventCopyWith<CharactersDetailScreenEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersDetailScreenEventCopyWith<$Res> {
  factory $CharactersDetailScreenEventCopyWith(
          CharactersDetailScreenEvent value,
          $Res Function(CharactersDetailScreenEvent) then) =
      _$CharactersDetailScreenEventCopyWithImpl<$Res,
          CharactersDetailScreenEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$CharactersDetailScreenEventCopyWithImpl<$Res,
        $Val extends CharactersDetailScreenEvent>
    implements $CharactersDetailScreenEventCopyWith<$Res> {
  _$CharactersDetailScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersDetailScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCharactersDetailsDataImplCopyWith<$Res>
    implements $CharactersDetailScreenEventCopyWith<$Res> {
  factory _$$GetCharactersDetailsDataImplCopyWith(
          _$GetCharactersDetailsDataImpl value,
          $Res Function(_$GetCharactersDetailsDataImpl) then) =
      __$$GetCharactersDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetCharactersDetailsDataImplCopyWithImpl<$Res>
    extends _$CharactersDetailScreenEventCopyWithImpl<$Res,
        _$GetCharactersDetailsDataImpl>
    implements _$$GetCharactersDetailsDataImplCopyWith<$Res> {
  __$$GetCharactersDetailsDataImplCopyWithImpl(
      _$GetCharactersDetailsDataImpl _value,
      $Res Function(_$GetCharactersDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersDetailScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCharactersDetailsDataImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCharactersDetailsDataImpl implements GetCharactersDetailsData {
  const _$GetCharactersDetailsDataImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CharactersDetailScreenEvent.getData(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersDetailsDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CharactersDetailScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersDetailsDataImplCopyWith<_$GetCharactersDetailsDataImpl>
      get copyWith => __$$GetCharactersDetailsDataImplCopyWithImpl<
          _$GetCharactersDetailsDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getData,
  }) {
    return getData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getData,
  }) {
    return getData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCharactersDetailsData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCharactersDetailsData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCharactersDetailsData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetCharactersDetailsData implements CharactersDetailScreenEvent {
  const factory GetCharactersDetailsData(final int id) =
      _$GetCharactersDetailsDataImpl;

  @override
  int get id;

  /// Create a copy of CharactersDetailScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCharactersDetailsDataImplCopyWith<_$GetCharactersDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersDetailScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CharactersDetailEntity data) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CharactersDetailEntity data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CharactersDetailEntity data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersDetailScreenInitial value) initial,
    required TResult Function(CharactersDetailScreenLoading value) loading,
    required TResult Function(CharactersDetailScreenLoaded value) loaded,
    required TResult Function(CharactersDetailScreenError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersDetailScreenInitial value)? initial,
    TResult? Function(CharactersDetailScreenLoading value)? loading,
    TResult? Function(CharactersDetailScreenLoaded value)? loaded,
    TResult? Function(CharactersDetailScreenError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersDetailScreenInitial value)? initial,
    TResult Function(CharactersDetailScreenLoading value)? loading,
    TResult Function(CharactersDetailScreenLoaded value)? loaded,
    TResult Function(CharactersDetailScreenError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersDetailScreenStateCopyWith<$Res> {
  factory $CharactersDetailScreenStateCopyWith(
          CharactersDetailScreenState value,
          $Res Function(CharactersDetailScreenState) then) =
      _$CharactersDetailScreenStateCopyWithImpl<$Res,
          CharactersDetailScreenState>;
}

/// @nodoc
class _$CharactersDetailScreenStateCopyWithImpl<$Res,
        $Val extends CharactersDetailScreenState>
    implements $CharactersDetailScreenStateCopyWith<$Res> {
  _$CharactersDetailScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CharactersDetailScreenInitialImplCopyWith<$Res> {
  factory _$$CharactersDetailScreenInitialImplCopyWith(
          _$CharactersDetailScreenInitialImpl value,
          $Res Function(_$CharactersDetailScreenInitialImpl) then) =
      __$$CharactersDetailScreenInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersDetailScreenInitialImplCopyWithImpl<$Res>
    extends _$CharactersDetailScreenStateCopyWithImpl<$Res,
        _$CharactersDetailScreenInitialImpl>
    implements _$$CharactersDetailScreenInitialImplCopyWith<$Res> {
  __$$CharactersDetailScreenInitialImplCopyWithImpl(
      _$CharactersDetailScreenInitialImpl _value,
      $Res Function(_$CharactersDetailScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CharactersDetailScreenInitialImpl
    implements CharactersDetailScreenInitial {
  const _$CharactersDetailScreenInitialImpl();

  @override
  String toString() {
    return 'CharactersDetailScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDetailScreenInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CharactersDetailEntity data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CharactersDetailEntity data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CharactersDetailEntity data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersDetailScreenInitial value) initial,
    required TResult Function(CharactersDetailScreenLoading value) loading,
    required TResult Function(CharactersDetailScreenLoaded value) loaded,
    required TResult Function(CharactersDetailScreenError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersDetailScreenInitial value)? initial,
    TResult? Function(CharactersDetailScreenLoading value)? loading,
    TResult? Function(CharactersDetailScreenLoaded value)? loaded,
    TResult? Function(CharactersDetailScreenError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersDetailScreenInitial value)? initial,
    TResult Function(CharactersDetailScreenLoading value)? loading,
    TResult Function(CharactersDetailScreenLoaded value)? loaded,
    TResult Function(CharactersDetailScreenError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharactersDetailScreenInitial
    implements CharactersDetailScreenState {
  const factory CharactersDetailScreenInitial() =
      _$CharactersDetailScreenInitialImpl;
}

/// @nodoc
abstract class _$$CharactersDetailScreenLoadingImplCopyWith<$Res> {
  factory _$$CharactersDetailScreenLoadingImplCopyWith(
          _$CharactersDetailScreenLoadingImpl value,
          $Res Function(_$CharactersDetailScreenLoadingImpl) then) =
      __$$CharactersDetailScreenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersDetailScreenLoadingImplCopyWithImpl<$Res>
    extends _$CharactersDetailScreenStateCopyWithImpl<$Res,
        _$CharactersDetailScreenLoadingImpl>
    implements _$$CharactersDetailScreenLoadingImplCopyWith<$Res> {
  __$$CharactersDetailScreenLoadingImplCopyWithImpl(
      _$CharactersDetailScreenLoadingImpl _value,
      $Res Function(_$CharactersDetailScreenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CharactersDetailScreenLoadingImpl
    implements CharactersDetailScreenLoading {
  const _$CharactersDetailScreenLoadingImpl();

  @override
  String toString() {
    return 'CharactersDetailScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDetailScreenLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CharactersDetailEntity data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CharactersDetailEntity data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CharactersDetailEntity data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersDetailScreenInitial value) initial,
    required TResult Function(CharactersDetailScreenLoading value) loading,
    required TResult Function(CharactersDetailScreenLoaded value) loaded,
    required TResult Function(CharactersDetailScreenError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersDetailScreenInitial value)? initial,
    TResult? Function(CharactersDetailScreenLoading value)? loading,
    TResult? Function(CharactersDetailScreenLoaded value)? loaded,
    TResult? Function(CharactersDetailScreenError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersDetailScreenInitial value)? initial,
    TResult Function(CharactersDetailScreenLoading value)? loading,
    TResult Function(CharactersDetailScreenLoaded value)? loaded,
    TResult Function(CharactersDetailScreenError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersDetailScreenLoading
    implements CharactersDetailScreenState {
  const factory CharactersDetailScreenLoading() =
      _$CharactersDetailScreenLoadingImpl;
}

/// @nodoc
abstract class _$$CharactersDetailScreenLoadedImplCopyWith<$Res> {
  factory _$$CharactersDetailScreenLoadedImplCopyWith(
          _$CharactersDetailScreenLoadedImpl value,
          $Res Function(_$CharactersDetailScreenLoadedImpl) then) =
      __$$CharactersDetailScreenLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharactersDetailEntity data});
}

/// @nodoc
class __$$CharactersDetailScreenLoadedImplCopyWithImpl<$Res>
    extends _$CharactersDetailScreenStateCopyWithImpl<$Res,
        _$CharactersDetailScreenLoadedImpl>
    implements _$$CharactersDetailScreenLoadedImplCopyWith<$Res> {
  __$$CharactersDetailScreenLoadedImplCopyWithImpl(
      _$CharactersDetailScreenLoadedImpl _value,
      $Res Function(_$CharactersDetailScreenLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CharactersDetailScreenLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharactersDetailEntity,
    ));
  }
}

/// @nodoc

class _$CharactersDetailScreenLoadedImpl
    implements CharactersDetailScreenLoaded {
  const _$CharactersDetailScreenLoadedImpl(this.data);

  @override
  final CharactersDetailEntity data;

  @override
  String toString() {
    return 'CharactersDetailScreenState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDetailScreenLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersDetailScreenLoadedImplCopyWith<
          _$CharactersDetailScreenLoadedImpl>
      get copyWith => __$$CharactersDetailScreenLoadedImplCopyWithImpl<
          _$CharactersDetailScreenLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CharactersDetailEntity data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CharactersDetailEntity data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CharactersDetailEntity data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersDetailScreenInitial value) initial,
    required TResult Function(CharactersDetailScreenLoading value) loading,
    required TResult Function(CharactersDetailScreenLoaded value) loaded,
    required TResult Function(CharactersDetailScreenError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersDetailScreenInitial value)? initial,
    TResult? Function(CharactersDetailScreenLoading value)? loading,
    TResult? Function(CharactersDetailScreenLoaded value)? loaded,
    TResult? Function(CharactersDetailScreenError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersDetailScreenInitial value)? initial,
    TResult Function(CharactersDetailScreenLoading value)? loading,
    TResult Function(CharactersDetailScreenLoaded value)? loaded,
    TResult Function(CharactersDetailScreenError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharactersDetailScreenLoaded
    implements CharactersDetailScreenState {
  const factory CharactersDetailScreenLoaded(
      final CharactersDetailEntity data) = _$CharactersDetailScreenLoadedImpl;

  CharactersDetailEntity get data;

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersDetailScreenLoadedImplCopyWith<
          _$CharactersDetailScreenLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersDetailScreenErrorImplCopyWith<$Res> {
  factory _$$CharactersDetailScreenErrorImplCopyWith(
          _$CharactersDetailScreenErrorImpl value,
          $Res Function(_$CharactersDetailScreenErrorImpl) then) =
      __$$CharactersDetailScreenErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CharactersDetailScreenErrorImplCopyWithImpl<$Res>
    extends _$CharactersDetailScreenStateCopyWithImpl<$Res,
        _$CharactersDetailScreenErrorImpl>
    implements _$$CharactersDetailScreenErrorImplCopyWith<$Res> {
  __$$CharactersDetailScreenErrorImplCopyWithImpl(
      _$CharactersDetailScreenErrorImpl _value,
      $Res Function(_$CharactersDetailScreenErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CharactersDetailScreenErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersDetailScreenErrorImpl implements CharactersDetailScreenError {
  const _$CharactersDetailScreenErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CharactersDetailScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDetailScreenErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersDetailScreenErrorImplCopyWith<_$CharactersDetailScreenErrorImpl>
      get copyWith => __$$CharactersDetailScreenErrorImplCopyWithImpl<
          _$CharactersDetailScreenErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CharactersDetailEntity data) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CharactersDetailEntity data)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CharactersDetailEntity data)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersDetailScreenInitial value) initial,
    required TResult Function(CharactersDetailScreenLoading value) loading,
    required TResult Function(CharactersDetailScreenLoaded value) loaded,
    required TResult Function(CharactersDetailScreenError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersDetailScreenInitial value)? initial,
    TResult? Function(CharactersDetailScreenLoading value)? loading,
    TResult? Function(CharactersDetailScreenLoaded value)? loaded,
    TResult? Function(CharactersDetailScreenError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersDetailScreenInitial value)? initial,
    TResult Function(CharactersDetailScreenLoading value)? loading,
    TResult Function(CharactersDetailScreenLoaded value)? loaded,
    TResult Function(CharactersDetailScreenError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersDetailScreenError
    implements CharactersDetailScreenState {
  const factory CharactersDetailScreenError(final String errorMessage) =
      _$CharactersDetailScreenErrorImpl;

  String get errorMessage;

  /// Create a copy of CharactersDetailScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersDetailScreenErrorImplCopyWith<_$CharactersDetailScreenErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
