// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function() isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function()? isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialEvent value) initial,
    required TResult Function(_loadingEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_signUpEvent value) isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialEvent value)? initial,
    TResult? Function(_loadingEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_signUpEvent value)? isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialEvent value)? initial,
    TResult Function(_loadingEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_signUpEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$initialEventImplCopyWith<$Res> {
  factory _$$initialEventImplCopyWith(
          _$initialEventImpl value, $Res Function(_$initialEventImpl) then) =
      __$$initialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$initialEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$initialEventImpl>
    implements _$$initialEventImplCopyWith<$Res> {
  __$$initialEventImplCopyWithImpl(
      _$initialEventImpl _value, $Res Function(_$initialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$initialEventImpl implements _initialEvent {
  const _$initialEventImpl();

  @override
  String toString() {
    return 'AuthEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$initialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function() isUserLoggedIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function()? isUserLoggedIn,
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
    required TResult Function(_initialEvent value) initial,
    required TResult Function(_loadingEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_signUpEvent value) isUserLoggedIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialEvent value)? initial,
    TResult? Function(_loadingEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_signUpEvent value)? isUserLoggedIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialEvent value)? initial,
    TResult Function(_loadingEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_signUpEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _initialEvent implements AuthEvent {
  const factory _initialEvent() = _$initialEventImpl;
}

/// @nodoc
abstract class _$$loadingEventImplCopyWith<$Res> {
  factory _$$loadingEventImplCopyWith(
          _$loadingEventImpl value, $Res Function(_$loadingEventImpl) then) =
      __$$loadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$loadingEventImpl>
    implements _$$loadingEventImplCopyWith<$Res> {
  __$$loadingEventImplCopyWithImpl(
      _$loadingEventImpl _value, $Res Function(_$loadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingEventImpl implements _loadingEvent {
  const _$loadingEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signUp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function() isUserLoggedIn,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialEvent value) initial,
    required TResult Function(_loadingEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_signUpEvent value) isUserLoggedIn,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialEvent value)? initial,
    TResult? Function(_loadingEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_signUpEvent value)? isUserLoggedIn,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialEvent value)? initial,
    TResult Function(_loadingEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_signUpEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _loadingEvent implements AuthEvent {
  const factory _loadingEvent() = _$loadingEventImpl;
}

/// @nodoc
abstract class _$$loginEventImplCopyWith<$Res> {
  factory _$$loginEventImplCopyWith(
          _$loginEventImpl value, $Res Function(_$loginEventImpl) then) =
      __$$loginEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$loginEventImpl>
    implements _$$loginEventImplCopyWith<$Res> {
  __$$loginEventImplCopyWithImpl(
      _$loginEventImpl _value, $Res Function(_$loginEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loginEventImpl implements _loginEvent {
  const _$loginEventImpl();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loginEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function() isUserLoggedIn,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialEvent value) initial,
    required TResult Function(_loadingEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_signUpEvent value) isUserLoggedIn,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialEvent value)? initial,
    TResult? Function(_loadingEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_signUpEvent value)? isUserLoggedIn,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialEvent value)? initial,
    TResult Function(_loadingEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_signUpEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _loginEvent implements AuthEvent {
  const factory _loginEvent() = _$loginEventImpl;
}

/// @nodoc
abstract class _$$signUpEventImplCopyWith<$Res> {
  factory _$$signUpEventImplCopyWith(
          _$signUpEventImpl value, $Res Function(_$signUpEventImpl) then) =
      __$$signUpEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$signUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$signUpEventImpl>
    implements _$$signUpEventImplCopyWith<$Res> {
  __$$signUpEventImplCopyWithImpl(
      _$signUpEventImpl _value, $Res Function(_$signUpEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$signUpEventImpl implements _signUpEvent {
  const _$signUpEventImpl();

  @override
  String toString() {
    return 'AuthEvent.isUserLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$signUpEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() signUp,
    required TResult Function() login,
    required TResult Function() isUserLoggedIn,
  }) {
    return isUserLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? signUp,
    TResult? Function()? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return isUserLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? signUp,
    TResult Function()? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (isUserLoggedIn != null) {
      return isUserLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_initialEvent value) initial,
    required TResult Function(_loadingEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_signUpEvent value) isUserLoggedIn,
  }) {
    return isUserLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_initialEvent value)? initial,
    TResult? Function(_loadingEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_signUpEvent value)? isUserLoggedIn,
  }) {
    return isUserLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_initialEvent value)? initial,
    TResult Function(_loadingEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_signUpEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (isUserLoggedIn != null) {
      return isUserLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _signUpEvent implements AuthEvent {
  const factory _signUpEvent() = _$signUpEventImpl;
}
