import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_mini_app/blocs/contact_bloc/index.dart';
import 'package:nexlab_mini_app/screens/contact_screen.dart';

/// ContactPage wraps the ContactScreen with BlocProvider
/// This is the entry point for the contact list feature
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: const ContactScreen(),
    );
  }
}
