import 'package:bloc_implementation_rivaan/core/router/app_router.dart';
import 'package:bloc_implementation_rivaan/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_pallete.dart';
import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'Sign In.',
                  style:Theme.of(context).textTheme.displayLarge
                ),
                const SizedBox(height: 30),
                AuthField(
                  hintText: 'Email',
                  controller: emailController,
                ),
                const SizedBox(height: 15),
                AuthField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObscureText: true,
                ),
                const SizedBox(height: 20),
                AuthGradientButton(
                  buttonText: 'Sign in',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // context.read<AuthBloc>().add(
                      //   AuthLogin(
                      //     email: emailController.text.trim(),
                      //     password: passwordController.text.trim(),
                      //   ),
                      // );
                    }
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context, SignUpPage.route());
                    context.goNamed(AppRouter.signUp);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account? ',
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}