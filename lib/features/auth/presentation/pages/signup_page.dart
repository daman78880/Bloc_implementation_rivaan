import 'package:bloc_implementation_rivaan/core/common/widgets/loader.dart';
import 'package:bloc_implementation_rivaan/core/router/app_router.dart';
import 'package:bloc_implementation_rivaan/core/utils/show_snackbar.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_event.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_pallete.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/auth_field.dart';
import '../widgets/auth_gradient_button.dart';

class SignUpPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const SignUpPage(),
      );

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(signUpSuccessful: (da){
            showSnackBar(context, 'User register successfully');
            context.goNamed(AppRouter.home);

          },
            failure: (message) {
              showSnackBar(context, message);
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Loader(),
              orElse: () {
                return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sign Up.',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 30),
                          AuthField(
                            hintText: 'Name',
                            controller: nameController,
                          ),
                          const SizedBox(height: 15),
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
                            buttonText: 'Sign Up',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(
                                      AuthEvent.signUp(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim(),
                                        name: nameController.text.trim(),
                                      ),
                                    );
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              context.pushReplacement(AppRouter.login);
                            },
                            child: RichText(
                              text: TextSpan(
                                text: 'Already have an account? ',
                                style: Theme.of(context).textTheme.titleMedium,
                                children: [
                                  TextSpan(
                                    text: 'Sign In',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
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
                    ));
              });
        },
      ),
    );
  }
}
