import 'package:bloc_implementation_rivaan/features/auth/data/models/login_model.dart';
import 'package:bloc_implementation_rivaan/features/auth/data/models/login_parsing_model.dart';
import 'package:bloc_implementation_rivaan/features/auth/domain/usecases/user_signup.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_event.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/user_login.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserLogin _userLogin;
  final UserSignup _userSignUp;

  AuthBloc({required UserLogin userLogin, required UserSignup userSignup})
      : _userLogin = userLogin,
        _userSignUp = userSignup,
        super(const AuthState.initial()) {
    on<AuthEvent>((events, emit) async {
      emit(const AuthState.loading());
      await events.map(
        login: (event) async => await _onLoginUser(event, emit),
        signUp: (event) async => await _signUp(event, emit),
        isUserLoggedIn: (_) async => await _isUserLoggedIn(events, emit),
      );
    });
  }

  _onLoginUser(event, Emitter<AuthState> emit) async {
    final res = await _userLogin(
      LoginParsingModel(
        email: event.email,
        password: event.password,
      ),
    );

    res.fold(
      (l) => emit(AuthState.failure(message: l.message)),
      (r) => _emitAuthSuccess(r, emit),
    );
  }

  _signUp( event, Emitter<AuthState> emit)async {
    final res = await _userSignUp(
      LoginParsingModel(
        email: event.email,
        password: event.password,
      ),
    );
    res.fold(
          (l) => emit(AuthState.failure(message: l.message)),
          (r) =>  emit(AuthState.signUpSuccessful(responseModel: r))
    );
  }

  _isUserLoggedIn(AuthEvent events, Emitter<AuthState> emit) {}

  void _emitAuthSuccess(
    LoginModel user,
    Emitter<AuthState> emit,
  ) {
    emit(AuthState.loginSuccessful(responseModel: user));
  }
}
