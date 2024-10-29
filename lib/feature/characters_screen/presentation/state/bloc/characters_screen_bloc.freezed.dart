// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, String query, String? gender, String? status)
        getCharactersEvent,
    required TResult Function() getNextPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query, String? gender, String? status)?
        getCharactersEvent,
    TResult? Function()? getNextPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query, String? gender, String? status)?
        getCharactersEvent,
    TResult Function()? getNextPageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCharactersEvent value) getCharactersEvent,
    required TResult Function(GetNextPageEvent value) getNextPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCharactersEvent value)? getCharactersEvent,
    TResult? Function(GetNextPageEvent value)? getNextPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCharactersEvent value)? getCharactersEvent,
    TResult Function(GetNextPageEvent value)? getNextPageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersScreenEventCopyWith<$Res> {
  factory $CharactersScreenEventCopyWith(CharactersScreenEvent value,
          $Res Function(CharactersScreenEvent) then) =
      _$CharactersScreenEventCopyWithImpl<$Res, CharactersScreenEvent>;
}

/// @nodoc
class _$CharactersScreenEventCopyWithImpl<$Res,
        $Val extends CharactersScreenEvent>
    implements $CharactersScreenEventCopyWith<$Res> {
  _$CharactersScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCharactersEventImplCopyWith<$Res> {
  factory _$$GetCharactersEventImplCopyWith(_$GetCharactersEventImpl value,
          $Res Function(_$GetCharactersEventImpl) then) =
      __$$GetCharactersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, String query, String? gender, String? status});
}

/// @nodoc
class __$$GetCharactersEventImplCopyWithImpl<$Res>
    extends _$CharactersScreenEventCopyWithImpl<$Res, _$GetCharactersEventImpl>
    implements _$$GetCharactersEventImplCopyWith<$Res> {
  __$$GetCharactersEventImplCopyWithImpl(_$GetCharactersEventImpl _value,
      $Res Function(_$GetCharactersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
    Object? gender = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetCharactersEventImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetCharactersEventImpl implements GetCharactersEvent {
  const _$GetCharactersEventImpl(
      {required this.page, required this.query, this.gender, this.status});

  @override
  final int page;
  @override
  final String query;
  @override
  final String? gender;
  @override
  final String? status;

  @override
  String toString() {
    return 'CharactersScreenEvent.getCharactersEvent(page: $page, query: $query, gender: $gender, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, query, gender, status);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersEventImplCopyWith<_$GetCharactersEventImpl> get copyWith =>
      __$$GetCharactersEventImplCopyWithImpl<_$GetCharactersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, String query, String? gender, String? status)
        getCharactersEvent,
    required TResult Function() getNextPageEvent,
  }) {
    return getCharactersEvent(page, query, gender, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query, String? gender, String? status)?
        getCharactersEvent,
    TResult? Function()? getNextPageEvent,
  }) {
    return getCharactersEvent?.call(page, query, gender, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query, String? gender, String? status)?
        getCharactersEvent,
    TResult Function()? getNextPageEvent,
    required TResult orElse(),
  }) {
    if (getCharactersEvent != null) {
      return getCharactersEvent(page, query, gender, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCharactersEvent value) getCharactersEvent,
    required TResult Function(GetNextPageEvent value) getNextPageEvent,
  }) {
    return getCharactersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCharactersEvent value)? getCharactersEvent,
    TResult? Function(GetNextPageEvent value)? getNextPageEvent,
  }) {
    return getCharactersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCharactersEvent value)? getCharactersEvent,
    TResult Function(GetNextPageEvent value)? getNextPageEvent,
    required TResult orElse(),
  }) {
    if (getCharactersEvent != null) {
      return getCharactersEvent(this);
    }
    return orElse();
  }
}

abstract class GetCharactersEvent implements CharactersScreenEvent {
  const factory GetCharactersEvent(
      {required final int page,
      required final String query,
      final String? gender,
      final String? status}) = _$GetCharactersEventImpl;

  int get page;
  String get query;
  String? get gender;
  String? get status;

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCharactersEventImplCopyWith<_$GetCharactersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNextPageEventImplCopyWith<$Res> {
  factory _$$GetNextPageEventImplCopyWith(_$GetNextPageEventImpl value,
          $Res Function(_$GetNextPageEventImpl) then) =
      __$$GetNextPageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNextPageEventImplCopyWithImpl<$Res>
    extends _$CharactersScreenEventCopyWithImpl<$Res, _$GetNextPageEventImpl>
    implements _$$GetNextPageEventImplCopyWith<$Res> {
  __$$GetNextPageEventImplCopyWithImpl(_$GetNextPageEventImpl _value,
      $Res Function(_$GetNextPageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNextPageEventImpl implements GetNextPageEvent {
  const _$GetNextPageEventImpl();

  @override
  String toString() {
    return 'CharactersScreenEvent.getNextPageEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNextPageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int page, String query, String? gender, String? status)
        getCharactersEvent,
    required TResult Function() getNextPageEvent,
  }) {
    return getNextPageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, String query, String? gender, String? status)?
        getCharactersEvent,
    TResult? Function()? getNextPageEvent,
  }) {
    return getNextPageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, String query, String? gender, String? status)?
        getCharactersEvent,
    TResult Function()? getNextPageEvent,
    required TResult orElse(),
  }) {
    if (getNextPageEvent != null) {
      return getNextPageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCharactersEvent value) getCharactersEvent,
    required TResult Function(GetNextPageEvent value) getNextPageEvent,
  }) {
    return getNextPageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCharactersEvent value)? getCharactersEvent,
    TResult? Function(GetNextPageEvent value)? getNextPageEvent,
  }) {
    return getNextPageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCharactersEvent value)? getCharactersEvent,
    TResult Function(GetNextPageEvent value)? getNextPageEvent,
    required TResult orElse(),
  }) {
    if (getNextPageEvent != null) {
      return getNextPageEvent(this);
    }
    return orElse();
  }
}

abstract class GetNextPageEvent implements CharactersScreenEvent {
  const factory GetNextPageEvent() = _$GetNextPageEventImpl;
}

/// @nodoc
mixin _$CharactersScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharactersDataEntity> charactersList,
            int count, bool isLoading)
        loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersScreenInitial value) initial,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersScreenInitial value)? initial,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersScreenInitial value)? initial,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersScreenStateCopyWith<$Res> {
  factory $CharactersScreenStateCopyWith(CharactersScreenState value,
          $Res Function(CharactersScreenState) then) =
      _$CharactersScreenStateCopyWithImpl<$Res, CharactersScreenState>;
}

/// @nodoc
class _$CharactersScreenStateCopyWithImpl<$Res,
        $Val extends CharactersScreenState>
    implements $CharactersScreenStateCopyWith<$Res> {
  _$CharactersScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CharactersScreenInitialImplCopyWith<$Res> {
  factory _$$CharactersScreenInitialImplCopyWith(
          _$CharactersScreenInitialImpl value,
          $Res Function(_$CharactersScreenInitialImpl) then) =
      __$$CharactersScreenInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersScreenInitialImplCopyWithImpl<$Res>
    extends _$CharactersScreenStateCopyWithImpl<$Res,
        _$CharactersScreenInitialImpl>
    implements _$$CharactersScreenInitialImplCopyWith<$Res> {
  __$$CharactersScreenInitialImplCopyWithImpl(
      _$CharactersScreenInitialImpl _value,
      $Res Function(_$CharactersScreenInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CharactersScreenInitialImpl implements CharactersScreenInitial {
  const _$CharactersScreenInitialImpl();

  @override
  String toString() {
    return 'CharactersScreenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersScreenInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharactersDataEntity> charactersList,
            int count, bool isLoading)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
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
    required TResult Function(CharactersScreenInitial value) initial,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersScreenInitial value)? initial,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersScreenInitial value)? initial,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CharactersScreenInitial implements CharactersScreenState {
  const factory CharactersScreenInitial() = _$CharactersScreenInitialImpl;
}

/// @nodoc
abstract class _$$CharactersLoadingStateImplCopyWith<$Res> {
  factory _$$CharactersLoadingStateImplCopyWith(
          _$CharactersLoadingStateImpl value,
          $Res Function(_$CharactersLoadingStateImpl) then) =
      __$$CharactersLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharactersLoadingStateImplCopyWithImpl<$Res>
    extends _$CharactersScreenStateCopyWithImpl<$Res,
        _$CharactersLoadingStateImpl>
    implements _$$CharactersLoadingStateImplCopyWith<$Res> {
  __$$CharactersLoadingStateImplCopyWithImpl(
      _$CharactersLoadingStateImpl _value,
      $Res Function(_$CharactersLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CharactersLoadingStateImpl implements CharactersLoadingState {
  const _$CharactersLoadingStateImpl();

  @override
  String toString() {
    return 'CharactersScreenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharactersDataEntity> charactersList,
            int count, bool isLoading)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
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
    required TResult Function(CharactersScreenInitial value) initial,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersScreenInitial value)? initial,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersScreenInitial value)? initial,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharactersLoadingState implements CharactersScreenState {
  const factory CharactersLoadingState() = _$CharactersLoadingStateImpl;
}

/// @nodoc
abstract class _$$CharactersLoadedStateImplCopyWith<$Res> {
  factory _$$CharactersLoadedStateImplCopyWith(
          _$CharactersLoadedStateImpl value,
          $Res Function(_$CharactersLoadedStateImpl) then) =
      __$$CharactersLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CharactersDataEntity> charactersList, int count, bool isLoading});
}

/// @nodoc
class __$$CharactersLoadedStateImplCopyWithImpl<$Res>
    extends _$CharactersScreenStateCopyWithImpl<$Res,
        _$CharactersLoadedStateImpl>
    implements _$$CharactersLoadedStateImplCopyWith<$Res> {
  __$$CharactersLoadedStateImplCopyWithImpl(_$CharactersLoadedStateImpl _value,
      $Res Function(_$CharactersLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charactersList = null,
    Object? count = null,
    Object? isLoading = null,
  }) {
    return _then(_$CharactersLoadedStateImpl(
      charactersList: null == charactersList
          ? _value._charactersList
          : charactersList // ignore: cast_nullable_to_non_nullable
              as List<CharactersDataEntity>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CharactersLoadedStateImpl implements CharactersLoadedState {
  const _$CharactersLoadedStateImpl(
      {required final List<CharactersDataEntity> charactersList,
      required this.count,
      required this.isLoading})
      : _charactersList = charactersList;

  final List<CharactersDataEntity> _charactersList;
  @override
  List<CharactersDataEntity> get charactersList {
    if (_charactersList is EqualUnmodifiableListView) return _charactersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charactersList);
  }

  @override
  final int count;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CharactersScreenState.loaded(charactersList: $charactersList, count: $count, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersLoadedStateImpl &&
            const DeepCollectionEquality()
                .equals(other._charactersList, _charactersList) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_charactersList), count, isLoading);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersLoadedStateImplCopyWith<_$CharactersLoadedStateImpl>
      get copyWith => __$$CharactersLoadedStateImplCopyWithImpl<
          _$CharactersLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharactersDataEntity> charactersList,
            int count, bool isLoading)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(charactersList, count, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(charactersList, count, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(charactersList, count, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharactersScreenInitial value) initial,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersScreenInitial value)? initial,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersScreenInitial value)? initial,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharactersLoadedState implements CharactersScreenState {
  const factory CharactersLoadedState(
      {required final List<CharactersDataEntity> charactersList,
      required final int count,
      required final bool isLoading}) = _$CharactersLoadedStateImpl;

  List<CharactersDataEntity> get charactersList;
  int get count;
  bool get isLoading;

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersLoadedStateImplCopyWith<_$CharactersLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharactersErrorStateImplCopyWith<$Res> {
  factory _$$CharactersErrorStateImplCopyWith(_$CharactersErrorStateImpl value,
          $Res Function(_$CharactersErrorStateImpl) then) =
      __$$CharactersErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$CharactersErrorStateImplCopyWithImpl<$Res>
    extends _$CharactersScreenStateCopyWithImpl<$Res,
        _$CharactersErrorStateImpl>
    implements _$$CharactersErrorStateImplCopyWith<$Res> {
  __$$CharactersErrorStateImplCopyWithImpl(_$CharactersErrorStateImpl _value,
      $Res Function(_$CharactersErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$CharactersErrorStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharactersErrorStateImpl implements CharactersErrorState {
  const _$CharactersErrorStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CharactersScreenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersErrorStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersErrorStateImplCopyWith<_$CharactersErrorStateImpl>
      get copyWith =>
          __$$CharactersErrorStateImplCopyWithImpl<_$CharactersErrorStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CharactersDataEntity> charactersList,
            int count, bool isLoading)
        loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CharactersDataEntity> charactersList, int count,
            bool isLoading)?
        loaded,
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
    required TResult Function(CharactersScreenInitial value) initial,
    required TResult Function(CharactersLoadingState value) loading,
    required TResult Function(CharactersLoadedState value) loaded,
    required TResult Function(CharactersErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CharactersScreenInitial value)? initial,
    TResult? Function(CharactersLoadingState value)? loading,
    TResult? Function(CharactersLoadedState value)? loaded,
    TResult? Function(CharactersErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharactersScreenInitial value)? initial,
    TResult Function(CharactersLoadingState value)? loading,
    TResult Function(CharactersLoadedState value)? loaded,
    TResult Function(CharactersErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharactersErrorState implements CharactersScreenState {
  const factory CharactersErrorState(final String errorMessage) =
      _$CharactersErrorStateImpl;

  String get errorMessage;

  /// Create a copy of CharactersScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersErrorStateImplCopyWith<_$CharactersErrorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
