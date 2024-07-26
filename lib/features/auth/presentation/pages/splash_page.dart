import 'dart:async';
import 'package:bloc_implementation_rivaan/core/router/app_router.dart';
import 'package:bloc_implementation_rivaan/core/utils/common_share_preference.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateUser();
  }
  navigateUser()async{
    bool userLogin = await CommonSharePreference.getUserLogin(key: CommonSharePreference.login);
    Timer(const Duration(seconds: 3), () {
      if(userLogin) {
        context.goNamed(AppRouter.home);
      }else{
        context.goNamed(AppRouter.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'AIO',
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
