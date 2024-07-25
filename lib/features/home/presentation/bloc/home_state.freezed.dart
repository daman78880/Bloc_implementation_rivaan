// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(List<Data> data) listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(List<Data> data)? listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(List<Data> data)? listLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialStatet value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_failureState value) failure,
    required TResult Function(_listLoadedState value) listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialStatet value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_failureState value)? failure,
    TResult? Function(_listLoadedState value)? listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialStatet value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_failureState value)? failure,
    TResult Function(_listLoadedState value)? listLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialStatetImplCopyWith<$Res> {
  factory _$$initialStatetImplCopyWith(
          _$initialStatetImpl value, $Res Function(_$initialStatetImpl) then) =
      __$$initialStatetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialStatetImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$initialStatetImpl>
    implements _$$initialStatetImplCopyWith<$Res> {
  __$$initialStatetImplCopyWithImpl(
      _$initialStatetImpl _value, $Res Function(_$initialStatetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialStatetImpl implements _initialStatet {
  const _$initialStatetImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialStatetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(List<Data> data) listLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(List<Data> data)? listLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(List<Data> data)? listLoaded,
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
    required TResult Function(_initialStatet value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_failureState value) failure,
    required TResult Function(_listLoadedState value) listLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialStatet value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_failureState value)? failure,
    TResult? Function(_listLoadedState value)? listLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialStatet value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_failureState value)? failure,
    TResult Function(_listLoadedState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initialStatet implements HomeState {
  const factory _initialStatet() = _$initialStatetImpl;
}

/// @nodoc
abstract class _$$loadingStateImplCopyWith<$Res> {
  factory _$$loadingStateImplCopyWith(
          _$loadingStateImpl value, $Res Function(_$loadingStateImpl) then) =
      __$$loadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$loadingStateImpl>
    implements _$$loadingStateImplCopyWith<$Res> {
  __$$loadingStateImplCopyWithImpl(
      _$loadingStateImpl _value, $Res Function(_$loadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingStateImpl implements _loadingState {
  const _$loadingStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(List<Data> data) listLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(List<Data> data)? listLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(List<Data> data)? listLoaded,
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
    required TResult Function(_initialStatet value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_failureState value) failure,
    required TResult Function(_listLoadedState value) listLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialStatet value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_failureState value)? failure,
    TResult? Function(_listLoadedState value)? listLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialStatet value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_failureState value)? failure,
    TResult Function(_listLoadedState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loadingState implements HomeState {
  const factory _loadingState() = _$loadingStateImpl;
}

/// @nodoc
abstract class _$$failureStateImplCopyWith<$Res> {
  factory _$$failureStateImplCopyWith(
          _$failureStateImpl value, $Res Function(_$failureStateImpl) then) =
      __$$failureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$failureStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$failureStateImpl>
    implements _$$failureStateImplCopyWith<$Res> {
  __$$failureStateImplCopyWithImpl(
      _$failureStateImpl _value, $Res Function(_$failureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$failureStateImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$failureStateImpl implements _failureState {
  const _$failureStateImpl({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'HomeState.failure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failureStateImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$failureStateImplCopyWith<_$failureStateImpl> get copyWith =>
      __$$failureStateImplCopyWithImpl<_$failureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(List<Data> data) listLoaded,
  }) {
    return failure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(List<Data> data)? listLoaded,
  }) {
    return failure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(List<Data> data)? listLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialStatet value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_failureState value) failure,
    required TResult Function(_listLoadedState value) listLoaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialStatet value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_failureState value)? failure,
    TResult? Function(_listLoadedState value)? listLoaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialStatet value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_failureState value)? failure,
    TResult Function(_listLoadedState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failureState implements HomeState {
  const factory _failureState({required final String msg}) = _$failureStateImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$failureStateImplCopyWith<_$failureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$listLoadedStateImplCopyWith<$Res> {
  factory _$$listLoadedStateImplCopyWith(_$listLoadedStateImpl value,
          $Res Function(_$listLoadedStateImpl) then) =
      __$$listLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Data> data});
}

/// @nodoc
class __$$listLoadedStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$listLoadedStateImpl>
    implements _$$listLoadedStateImplCopyWith<$Res> {
  __$$listLoadedStateImplCopyWithImpl(
      _$listLoadedStateImpl _value, $Res Function(_$listLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$listLoadedStateImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>,
    ));
  }
}

/// @nodoc

class _$listLoadedStateImpl implements _listLoadedState {
  const _$listLoadedStateImpl({required final List<Data> data}) : _data = data;

  final List<Data> _data;
  @override
  List<Data> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeState.listLoaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$listLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$listLoadedStateImplCopyWith<_$listLoadedStateImpl> get copyWith =>
      __$$listLoadedStateImplCopyWithImpl<_$listLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String msg) failure,
    required TResult Function(List<Data> data) listLoaded,
  }) {
    return listLoaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String msg)? failure,
    TResult? Function(List<Data> data)? listLoaded,
  }) {
    return listLoaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String msg)? failure,
    TResult Function(List<Data> data)? listLoaded,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialStatet value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_failureState value) failure,
    required TResult Function(_listLoadedState value) listLoaded,
  }) {
    return listLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialStatet value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_failureState value)? failure,
    TResult? Function(_listLoadedState value)? listLoaded,
  }) {
    return listLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialStatet value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_failureState value)? failure,
    TResult Function(_listLoadedState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(this);
    }
    return orElse();
  }
}

abstract class _listLoadedState implements HomeState {
  const factory _listLoadedState({required final List<Data> data}) =
      _$listLoadedStateImpl;

  List<Data> get data;
  @JsonKey(ignore: true)
  _$$listLoadedStateImplCopyWith<_$listLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
