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
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function(String email, String password) login,
    required TResult Function() isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function(String email, String password)? login,
    TResult? Function()? isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String name)? signUp,
    TResult Function(String email, String password)? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUpEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_isUserLoggedInEvent value) isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUpEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_isUserLoggedInEvent value)? isUserLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUpEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_isUserLoggedInEvent value)? isUserLoggedIn,
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
abstract class _$$signUpEventImplCopyWith<$Res> {
  factory _$$signUpEventImplCopyWith(
          _$signUpEventImpl value, $Res Function(_$signUpEventImpl) then) =
      __$$signUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String name});
}

/// @nodoc
class __$$signUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$signUpEventImpl>
    implements _$$signUpEventImplCopyWith<$Res> {
  __$$signUpEventImplCopyWithImpl(
      _$signUpEventImpl _value, $Res Function(_$signUpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? name = null,
  }) {
    return _then(_$signUpEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$signUpEventImpl implements _signUpEvent {
  const _$signUpEventImpl(
      {required this.email, required this.password, required this.name});

  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$signUpEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$signUpEventImplCopyWith<_$signUpEventImpl> get copyWith =>
      __$$signUpEventImplCopyWithImpl<_$signUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function(String email, String password) login,
    required TResult Function() isUserLoggedIn,
  }) {
    return signUp(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function(String email, String password)? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return signUp?.call(email, password, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String name)? signUp,
    TResult Function(String email, String password)? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUpEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_isUserLoggedInEvent value) isUserLoggedIn,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUpEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_isUserLoggedInEvent value)? isUserLoggedIn,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUpEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_isUserLoggedInEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _signUpEvent implements AuthEvent {
  const factory _signUpEvent(
      {required final String email,
      required final String password,
      required final String name}) = _$signUpEventImpl;

  String get email;
  String get password;
  String get name;
  @JsonKey(ignore: true)
  _$$signUpEventImplCopyWith<_$signUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$loginEventImplCopyWith<$Res> {
  factory _$$loginEventImplCopyWith(
          _$loginEventImpl value, $Res Function(_$loginEventImpl) then) =
      __$$loginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$loginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$loginEventImpl>
    implements _$$loginEventImplCopyWith<$Res> {
  __$$loginEventImplCopyWithImpl(
      _$loginEventImpl _value, $Res Function(_$loginEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$loginEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$loginEventImpl implements _loginEvent {
  const _$loginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$loginEventImplCopyWith<_$loginEventImpl> get copyWith =>
      __$$loginEventImplCopyWithImpl<_$loginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function(String email, String password) login,
    required TResult Function() isUserLoggedIn,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function(String email, String password)? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String name)? signUp,
    TResult Function(String email, String password)? login,
    TResult Function()? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_signUpEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_isUserLoggedInEvent value) isUserLoggedIn,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUpEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_isUserLoggedInEvent value)? isUserLoggedIn,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUpEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_isUserLoggedInEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _loginEvent implements AuthEvent {
  const factory _loginEvent(
      {required final String email,
      required final String password}) = _$loginEventImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$loginEventImplCopyWith<_$loginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$isUserLoggedInEventImplCopyWith<$Res> {
  factory _$$isUserLoggedInEventImplCopyWith(_$isUserLoggedInEventImpl value,
          $Res Function(_$isUserLoggedInEventImpl) then) =
      __$$isUserLoggedInEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$isUserLoggedInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$isUserLoggedInEventImpl>
    implements _$$isUserLoggedInEventImplCopyWith<$Res> {
  __$$isUserLoggedInEventImplCopyWithImpl(_$isUserLoggedInEventImpl _value,
      $Res Function(_$isUserLoggedInEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$isUserLoggedInEventImpl implements _isUserLoggedInEvent {
  const _$isUserLoggedInEventImpl();

  @override
  String toString() {
    return 'AuthEvent.isUserLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$isUserLoggedInEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, String name)
        signUp,
    required TResult Function(String email, String password) login,
    required TResult Function() isUserLoggedIn,
  }) {
    return isUserLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, String name)? signUp,
    TResult? Function(String email, String password)? login,
    TResult? Function()? isUserLoggedIn,
  }) {
    return isUserLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, String name)? signUp,
    TResult Function(String email, String password)? login,
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
    required TResult Function(_signUpEvent value) signUp,
    required TResult Function(_loginEvent value) login,
    required TResult Function(_isUserLoggedInEvent value) isUserLoggedIn,
  }) {
    return isUserLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_signUpEvent value)? signUp,
    TResult? Function(_loginEvent value)? login,
    TResult? Function(_isUserLoggedInEvent value)? isUserLoggedIn,
  }) {
    return isUserLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_signUpEvent value)? signUp,
    TResult Function(_loginEvent value)? login,
    TResult Function(_isUserLoggedInEvent value)? isUserLoggedIn,
    required TResult orElse(),
  }) {
    if (isUserLoggedIn != null) {
      return isUserLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _isUserLoggedInEvent implements AuthEvent {
  const factory _isUserLoggedInEvent() = _$isUserLoggedInEventImpl;
}
