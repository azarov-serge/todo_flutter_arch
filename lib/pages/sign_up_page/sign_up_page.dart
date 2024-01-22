import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_up_page_bloc.dart';
import 'bloc/sign_up_page_state.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
    return BlocListener<SignUpPageBloc, SignUpPageState>(
      listener: (ctx, state) {
        final error = state.error;

        if (error.isNotEmpty) {
          _showAlert(
            context,
            message: error,
            onPressed: (context) {
              ctx
                  .read<SignUpPageBloc>()
                  .add(const SignUpPageEvent.clearError());
              Navigator.of(context).pop();
            },
          );
        }
      },
      child: BlocBuilder<SignUpPageBloc, SignUpPageState>(
        builder: (ctx, state) {
          final signUpPageBloc = ctx.read<SignUpPageBloc>();

          return Scaffold(
            appBar: AppBar(
              title: const Text('Sign Up'),
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
                        Icons.person_add,
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
                                signUpPageBloc.add(
                                  SignUpPageEvent.signUp(
                                      login: _loginController.text,
                                      password: _passwordController.text),
                                );
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
