import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUp({required String email,required String password,required String name}) = _signUpEvent;
  const factory AuthEvent.login({required String email,required String password}) = _loginEvent;
  const factory AuthEvent.isUserLoggedIn() = _isUserLoggedInEvent;
}

// part of 'auth_bloc.dart';
// @immutable
// sealed class AuthEvent {}
// final class AuthSignUp extends AuthEvent {
//   final String email;
//   final String password;
//   final String name;
//   AuthSignUp({
//     required this.email,
//     required this.password,
//     required this.name,
//   });
// }
// final class AuthLogin extends AuthEvent {
//   final String email;
//   final String password;
//   AuthLogin({
//     required this.email,
//     required this.password,
//   });
// }
// final class AuthIsUserLoggedIn extends AuthEvent {}
