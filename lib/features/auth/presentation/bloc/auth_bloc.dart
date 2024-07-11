import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_event.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    // on<AuthEvent>((_, emit) => emit(const AuthState.loading()));
    on<AuthEvent>((events, emit) async {
      emit(const AuthState.loading());
      await events.map(
        initial: (event) async => (),
        login: (event) async => await _onLoginUser(event, emit),
        signUp: (_) async => await _signUp(events, emit),
        isUserLoggedIn: (_) async => await _isUserLoggedIn(events, emit),
      );
    });
  }

  _onLoginUser(event, Emitter<AuthState> emit) {}

  _signUp(AuthEvent events, Emitter<AuthState> emit) {}

  _isUserLoggedIn(AuthEvent events, Emitter<AuthState> emit) {}
}
