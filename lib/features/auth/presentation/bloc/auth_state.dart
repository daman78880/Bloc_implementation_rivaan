import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = _initialState;

  const factory AuthState.loading() = _loadingState;

  const factory AuthState.loginSuccessful({required LoginModel responseModel}) = _loginState;

  const factory AuthState.signUpSuccessful() = _signUpState;

  const factory AuthState.failure({required String message}) = _failureState;
}

// part of 'auth_bloc.dart';
// @immutable
// sealed class AuthState {
//   const AuthState();
// }
// final class AuthInitial extends AuthState {}
// final class AuthLoading extends AuthState {}
// final class AuthSuccess extends AuthState {
//   final User user;
//   const AuthSuccess(this.user);
// }
// final class AuthFailure extends AuthState {
//   final String message;
//   const AuthFailure(this.message);
// }