import 'package:bloc_implementation_rivaan/core/common/widgets/loader.dart';
import 'package:bloc_implementation_rivaan/core/router/app_router.dart';
import 'package:bloc_implementation_rivaan/core/theme/app_theme.dart';
import 'package:bloc_implementation_rivaan/core/utils/common_share_preference.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bloc_implementation_rivaan/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_pallete.dart';
import '../../../../core/utils/show_snackbar.dart';
import '../../../../core/utils/utils.dart';
import '../bloc/auth_event.dart';
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
    return GestureDetector(
      onTap: () => Utils.dismissKeyboard(context),
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeWhen(
              loginSuccessful: (responseModel) async {
                showSnackBar(context, 'User login successfully');
                await CommonSharePreference.saveUserLogin(
                    key: CommonSharePreference.login, value: true);
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
              loading: () {
                return Loader();
              },
              orElse: () => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign In.',
                            style: Theme.of(context).textTheme.displayLarge),
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
                              context.read<AuthBloc>().add(AuthEvent.login(
                                  email: emailController.text.trim(),
                                  password: passwordController.text.trim()));
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
                  )),
            );
          },
        ),
      ),
    );
  }
}

/*
class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (previous, current) => previous.emailError != current.emailError,
              builder: (context, state) {
                return TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: state.emailError.isNotEmpty ? state.emailError : null,
                  ),
                  onChanged: (value) {
                    context.read<LoginBloc>().add(EmailChanged(value));
                  },
                );
              },
            ),
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (previous, current) => previous.pwdError!=current.pwdError,
              builder: (context, state) {
                return TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorText: state.pwdError.isNotEmpty ? state.pwdError : null,
                  ),
                  obscureText: true,
                  onChanged: (value) {
                    context.read<LoginBloc>().add(PasswordChanged(value));
                  },
                );
              },
            ),
            SizedBox(height: 20),
            BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state.isSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Login Successful'),
                      backgroundColor: Colors.green,
                    ));
                  } else if (state.isFailure && !state.isSubmitting) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Login Failed'),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
              buildWhen: (previous, current) => previous.isSubmitting != current.isSubmitting ,
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state.isSubmitting ? null : () {
                    context.read<LoginBloc>().add(LoginSubmitted());
                  },
                  child: state.isSubmitting
                      ? CircularProgressIndicator()
                      : Text('Login'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
* */