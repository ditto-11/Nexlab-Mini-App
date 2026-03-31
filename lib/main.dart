import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_mini_app/blocs/contact_bloc/index.dart';
import 'package:nexlab_mini_app/blocs/login_bloc/index.dart';
import 'package:nexlab_mini_app/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => ContactBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Nexlab Mini App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.light,
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}

