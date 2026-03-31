import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_mini_app/blocs/login_bloc/index.dart';
import 'package:nexlab_mini_app/screens/login_screen.dart';

/// LoginPage wraps the LoginScreen with BlocProvider
/// This is the entry point for the login feature
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const LoginScreen(),
    );
  }
}
