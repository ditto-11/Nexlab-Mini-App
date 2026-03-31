import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_mini_app/blocs/contact_bloc/index.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger fetch event when widget initializes
    context.read<ContactBloc>().add(const FetchContacts());
  }

  void _onRefresh() {
    context.read<ContactBloc>().add(const RefreshContacts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state is ContactLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ContactLoaded) {
            return RefreshIndicator(
              onRefresh: () async {
                _onRefresh();
                // Wait for the bloc to emit a new state
                await Future.delayed(const Duration(seconds: 1));
              },
              child: ListView.builder(
                itemCount: state.contacts.length,
                itemBuilder: (context, index) {
                  final contact = state.contacts[index];
                  final name = contact['name'] ?? 'Unknown';
                  final phone = contact['phone'] ?? 'N/A';

                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(
                        name[0].toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    title: Text(name),
                    subtitle: Text(phone),
                    trailing: const Icon(Icons.call),
                    onTap: () {
                      // TODO: Implement call or contact detail action
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Calling $name...'),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          } else if (state is ContactError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 64,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _onRefresh,
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.contacts_outlined,
                    color: Colors.grey,
                    size: 64,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'No contacts yet',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _onRefresh,
                    child: const Text('Load Contacts'),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
