import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloc_implementation_rivaan/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/common/app_string.dart';
import 'core/common/cubits/lanuage/lanuage_cubit.dart';
import 'core/constants/device_constants.dart';
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
        create: (_) => serviceLocator<LanguageCubit>(),
      ),
      BlocProvider(
        create: (_) => serviceLocator<AppUserCubit>(),
      ),
      BlocProvider(
        create: (_) => serviceLocator<AuthBloc>(),
      ),
      BlocProvider(
        create: (_) => serviceLocator<HomeBloc>(),
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
  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    super.initState();
    initializeLocalization();
    // context.read<AuthBloc>().add(AuthIsUserLoggedIn());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return ScreenUtilInit(
              // designSize: const Size(360, 690),
              designSize:  const Size(DeviceConstants.designDeviceWidth, DeviceConstants.designDeviceHeight),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context, child) {
                return MaterialApp.router(
                  locale: state,
                  supportedLocales: localization.supportedLocales,
                  localizationsDelegates: localization.localizationsDelegates,
                  debugShowCheckedModeBanner: false,
                  title: 'Blog App',
                  themeMode: ThemeMode.dark,
                  darkTheme: AppTheme.lightAppTheme,
                  theme: AppTheme.lightAppTheme,
                  routerConfig: AppRouter.router,
                );
              });
        });
  }

  void initializeLocalization() {
    localization.init(
      mapLocales: MapLocaleList.types,
      initLanguageCode:  MapLocaleList.types.first.languageCode,
    );
    localization.onTranslatedLanguage = _onTranslatedLanguage;
  }
  void _onTranslatedLanguage(Locale? locale) {
    // setState(() {});
  }
}


