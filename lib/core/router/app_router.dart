import 'package:bloc_implementation_rivaan/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/home/presentation/page/home.dart';
import '../common/cubits/app_user/app_user_cubit.dart';

class AppRouter {
  static const String splash = '/';
  static const String login = '/LoginPage';
  static const String signUp = '/signUpPage';
  static const String home = '/HomePage';
  static final GoRouter router = GoRouter(
    initialLocation: home,
    errorBuilder: (context, state) {
      return const Scaffold(
        body: Text('No route found'),
      );
    },
    // redirect: (context, state) {
    //
    // },
    routes: [
      GoRoute(
        name: splash,
        path: splash,
        builder: (context, state) {
          return BlocSelector<AppUserCubit, AppUserState, bool>(
            selector: (state) {
              return state is AppUserLoggedIn;
            },
            builder: (context, isLoggedIn) {
              if (isLoggedIn) {
                return const SplashPage();
              }
              return const SplashPage();
            },
          );
        },
      ),
      GoRoute(
          name: login,
          path: login,
          builder: (context, state) => const LoginPage()),
      GoRoute(
          name: signUp,
          path: signUp,
          builder: (context, state) => const SignUpPage()),
      GoRoute(
          name: home,
          path: home,
          builder: (context, state) => const HomeScreen()),
    ],
  );
}
