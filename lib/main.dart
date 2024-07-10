import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/theme/app_theme.dart';
import 'core/common/cubits/app_user/app_user_cubit.dart';
import 'core/router/app_router.dart';
import 'init_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => serviceLocator<AppUserCubit>(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // context.read<AuthBloc>().add(AuthIsUserLoggedIn());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.lightAppTheme,
      theme: AppTheme.lightAppTheme,
      routerConfig: AppRouter.router,
    );
  }
}

/*
            child: MaterialApp(
              supportedLocales: localization.supportedLocales,
              localizationsDelegates: localization.localizationsDelegates,
              builder: (context, child) {
                final MediaQueryData data = MediaQuery.of(context);
                return MediaQuery(
                  data: data.copyWith(textScaleFactor: 1.0),
                  child: child ?? const SizedBox.shrink(),
                );
              },
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightAppTheme,
              initialRoute: AppRouter.splash,
              onGenerateRoute: AppRouter.onGenerateRoute,
            ),
*
* */