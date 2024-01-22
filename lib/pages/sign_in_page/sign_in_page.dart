import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/application/router/router.dart';

import 'bloc/sign_in_page_bloc.dart';
import 'bloc/sign_in_page_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _passwordFocusNode = FocusNode();

  AutovalidateMode? _autovalidate;

  @override
  void dispose() {
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInPageBloc, SignInPageState>(
      listener: (ctx, state) {
        final error = state.error;

        if (error.isNotEmpty) {
          _showAlert(
            context,
            message: error,
            onPressed: (context) {
              ctx
                  .read<SignInPageBloc>()
                  .add(const SignInPageEvent.clearError());
              Navigator.of(context).pop();
            },
          );
        }
      },
      child: BlocBuilder<SignInPageBloc, SignInPageState>(
        builder: (ctx, state) {
          final signInPageBloc = ctx.read<SignInPageBloc>();

          return Scaffold(
            appBar: AppBar(
              leading: const SizedBox.shrink(),
              title: const Text('Sign in'),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: _formKey,
                  autovalidateMode: _autovalidate,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 50),
                      //logo
                      const Icon(
                        Icons.lock_person,
                        size: 50,
                      ),
                      const SizedBox(height: 50),

                      //login
                      TextField(
                        controller: _loginController,
                        decoration: const InputDecoration(
                          filled: true,
                          hintText: 'Login',
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextField(
                        controller: _passwordController,
                        obscureText: true,
                        focusNode: _passwordFocusNode,
                        decoration: const InputDecoration(
                          filled: true,
                          hintText: 'Password',
                        ),
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: state.loading
                            ? null
                            : () {
                                signInPageBloc.add(
                                  SignInPageEvent.signIn(
                                      login: _loginController.text,
                                      password: _passwordController.text),
                                );
                              },
                        child: const Text('Sign in'),
                      ),

                      const SizedBox(height: 50),

                      const Center(child: Text('or')),

                      const SizedBox(height: 50),

                      TextButton(
                        onPressed: state.loading
                            ? null
                            : () {
                                Navigator.of(context).pushNamed(signUpRoute);
                              },
                        child: const Text('Sign up'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _showAlert(
    BuildContext context, {
    required String message,
    required Function onPressed,
  }) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: Text(message),
        actions: [
          ElevatedButton(
            onPressed: () => onPressed(ctx),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }
}
