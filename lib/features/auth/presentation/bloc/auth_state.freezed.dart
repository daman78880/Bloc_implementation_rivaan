// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel responseModel) loginSuccessful,
    required TResult Function() signUpSuccessful,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel responseModel)? loginSuccessful,
    TResult? Function()? signUpSuccessful,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel responseModel)? loginSuccessful,
    TResult Function()? signUpSuccessful,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialState value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_loginState value) loginSuccessful,
    required TResult Function(_signUpState value) signUpSuccessful,
    required TResult Function(_failureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialState value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_loginState value)? loginSuccessful,
    TResult? Function(_signUpState value)? signUpSuccessful,
    TResult? Function(_failureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialState value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_loginState value)? loginSuccessful,
    TResult Function(_signUpState value)? signUpSuccessful,
    TResult Function(_failureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialStateImplCopyWith<$Res> {
  factory _$$initialStateImplCopyWith(
          _$initialStateImpl value, $Res Function(_$initialStateImpl) then) =
      __$$initialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$initialStateImpl>
    implements _$$initialStateImplCopyWith<$Res> {
  __$$initialStateImplCopyWithImpl(
      _$initialStateImpl _value, $Res Function(_$initialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialStateImpl implements _initialState {
  const _$initialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel responseModel) loginSuccessful,
    required TResult Function() signUpSuccessful,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel responseModel)? loginSuccessful,
    TResult? Function()? signUpSuccessful,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel responseModel)? loginSuccessful,
    TResult Function()? signUpSuccessful,
    TResult Function(String message)? failure,
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
    required TResult Function(_initialState value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_loginState value) loginSuccessful,
    required TResult Function(_signUpState value) signUpSuccessful,
    required TResult Function(_failureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialState value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_loginState value)? loginSuccessful,
    TResult? Function(_signUpState value)? signUpSuccessful,
    TResult? Function(_failureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialState value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_loginState value)? loginSuccessful,
    TResult Function(_signUpState value)? signUpSuccessful,
    TResult Function(_failureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initialState implements AuthState {
  const factory _initialState() = _$initialStateImpl;
}

/// @nodoc
abstract class _$$loadingStateImplCopyWith<$Res> {
  factory _$$loadingStateImplCopyWith(
          _$loadingStateImpl value, $Res Function(_$loadingStateImpl) then) =
      __$$loadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$loadingStateImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function(LoginModel responseModel) loginSuccessful,
    required TResult Function() signUpSuccessful,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel responseModel)? loginSuccessful,
    TResult? Function()? signUpSuccessful,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel responseModel)? loginSuccessful,
    TResult Function()? signUpSuccessful,
    TResult Function(String message)? failure,
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
    required TResult Function(_initialState value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_loginState value) loginSuccessful,
    required TResult Function(_signUpState value) signUpSuccessful,
    required TResult Function(_failureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialState value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_loginState value)? loginSuccessful,
    TResult? Function(_signUpState value)? signUpSuccessful,
    TResult? Function(_failureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialState value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_loginState value)? loginSuccessful,
    TResult Function(_signUpState value)? signUpSuccessful,
    TResult Function(_failureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loadingState implements AuthState {
  const factory _loadingState() = _$loadingStateImpl;
}

/// @nodoc
abstract class _$$loginStateImplCopyWith<$Res> {
  factory _$$loginStateImplCopyWith(
          _$loginStateImpl value, $Res Function(_$loginStateImpl) then) =
      __$$loginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel responseModel});

  $LoginModelCopyWith<$Res> get responseModel;
}

/// @nodoc
class __$$loginStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$loginStateImpl>
    implements _$$loginStateImplCopyWith<$Res> {
  __$$loginStateImplCopyWithImpl(
      _$loginStateImpl _value, $Res Function(_$loginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseModel = null,
  }) {
    return _then(_$loginStateImpl(
      responseModel: null == responseModel
          ? _value.responseModel
          : responseModel // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginModelCopyWith<$Res> get responseModel {
    return $LoginModelCopyWith<$Res>(_value.responseModel, (value) {
      return _then(_value.copyWith(responseModel: value));
    });
  }
}

/// @nodoc

class _$loginStateImpl implements _loginState {
  const _$loginStateImpl({required this.responseModel});

  @override
  final LoginModel responseModel;

  @override
  String toString() {
    return 'AuthState.loginSuccessful(responseModel: $responseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginStateImpl &&
            (identical(other.responseModel, responseModel) ||
                other.responseModel == responseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginStateImplCopyWith<_$loginStateImpl> get copyWith =>
      __$$loginStateImplCopyWithImpl<_$loginStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel responseModel) loginSuccessful,
    required TResult Function() signUpSuccessful,
    required TResult Function(String message) failure,
  }) {
    return loginSuccessful(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel responseModel)? loginSuccessful,
    TResult? Function()? signUpSuccessful,
    TResult? Function(String message)? failure,
  }) {
    return loginSuccessful?.call(responseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel responseModel)? loginSuccessful,
    TResult Function()? signUpSuccessful,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loginSuccessful != null) {
      return loginSuccessful(responseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialState value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_loginState value) loginSuccessful,
    required TResult Function(_signUpState value) signUpSuccessful,
    required TResult Function(_failureState value) failure,
  }) {
    return loginSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialState value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_loginState value)? loginSuccessful,
    TResult? Function(_signUpState value)? signUpSuccessful,
    TResult? Function(_failureState value)? failure,
  }) {
    return loginSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialState value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_loginState value)? loginSuccessful,
    TResult Function(_signUpState value)? signUpSuccessful,
    TResult Function(_failureState value)? failure,
    required TResult orElse(),
  }) {
    if (loginSuccessful != null) {
      return loginSuccessful(this);
    }
    return orElse();
  }
}

abstract class _loginState implements AuthState {
  const factory _loginState({required final LoginModel responseModel}) =
      _$loginStateImpl;

  LoginModel get responseModel;
  @JsonKey(ignore: true)
  _$$loginStateImplCopyWith<_$loginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$signUpStateImplCopyWith<$Res> {
  factory _$$signUpStateImplCopyWith(
          _$signUpStateImpl value, $Res Function(_$signUpStateImpl) then) =
      __$$signUpStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signUpStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$signUpStateImpl>
    implements _$$signUpStateImplCopyWith<$Res> {
  __$$signUpStateImplCopyWithImpl(
      _$signUpStateImpl _value, $Res Function(_$signUpStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$signUpStateImpl implements _signUpState {
  const _$signUpStateImpl();

  @override
  String toString() {
    return 'AuthState.signUpSuccessful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signUpStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel responseModel) loginSuccessful,
    required TResult Function() signUpSuccessful,
    required TResult Function(String message) failure,
  }) {
    return signUpSuccessful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel responseModel)? loginSuccessful,
    TResult? Function()? signUpSuccessful,
    TResult? Function(String message)? failure,
  }) {
    return signUpSuccessful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel responseModel)? loginSuccessful,
    TResult Function()? signUpSuccessful,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (signUpSuccessful != null) {
      return signUpSuccessful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialState value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_loginState value) loginSuccessful,
    required TResult Function(_signUpState value) signUpSuccessful,
    required TResult Function(_failureState value) failure,
  }) {
    return signUpSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialState value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_loginState value)? loginSuccessful,
    TResult? Function(_signUpState value)? signUpSuccessful,
    TResult? Function(_failureState value)? failure,
  }) {
    return signUpSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialState value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_loginState value)? loginSuccessful,
    TResult Function(_signUpState value)? signUpSuccessful,
    TResult Function(_failureState value)? failure,
    required TResult orElse(),
  }) {
    if (signUpSuccessful != null) {
      return signUpSuccessful(this);
    }
    return orElse();
  }
}

abstract class _signUpState implements AuthState {
  const factory _signUpState() = _$signUpStateImpl;
}

/// @nodoc
abstract class _$$failureStateImplCopyWith<$Res> {
  factory _$$failureStateImplCopyWith(
          _$failureStateImpl value, $Res Function(_$failureStateImpl) then) =
      __$$failureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$failureStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$failureStateImpl>
    implements _$$failureStateImplCopyWith<$Res> {
  __$$failureStateImplCopyWithImpl(
      _$failureStateImpl _value, $Res Function(_$failureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$failureStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$failureStateImpl implements _failureState {
  const _$failureStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

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
    required TResult Function(LoginModel responseModel) loginSuccessful,
    required TResult Function() signUpSuccessful,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel responseModel)? loginSuccessful,
    TResult? Function()? signUpSuccessful,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel responseModel)? loginSuccessful,
    TResult Function()? signUpSuccessful,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialState value) initial,
    required TResult Function(_loadingState value) loading,
    required TResult Function(_loginState value) loginSuccessful,
    required TResult Function(_signUpState value) signUpSuccessful,
    required TResult Function(_failureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialState value)? initial,
    TResult? Function(_loadingState value)? loading,
    TResult? Function(_loginState value)? loginSuccessful,
    TResult? Function(_signUpState value)? signUpSuccessful,
    TResult? Function(_failureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialState value)? initial,
    TResult Function(_loadingState value)? loading,
    TResult Function(_loginState value)? loginSuccessful,
    TResult Function(_signUpState value)? signUpSuccessful,
    TResult Function(_failureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _failureState implements AuthState {
  const factory _failureState({required final String message}) =
      _$failureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$failureStateImplCopyWith<_$failureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
