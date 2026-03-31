import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactInitial()) {
    on<FetchContacts>(_onFetchContacts);
    on<RefreshContacts>(_onRefreshContacts);
  }

  // Mock data: 5 contacts with names and phone numbers
  final List<Map<String, String>> _mockContacts = [
    {
      'name': 'Alice Johnson',
      'phone': '+1 (555) 123-4567',
    },
    {
      'name': 'Bob Smith',
      'phone': '+1 (555) 234-5678',
    },
    {
      'name': 'Carol Williams',
      'phone': '+1 (555) 345-6789',
    },
    {
      'name': 'David Brown',
      'phone': '+1 (555) 456-7890',
    },
    {
      'name': 'Eve Davis',
      'phone': '+1 (555) 567-8901',
    },
  ];

  Future<void> _onFetchContacts(
    FetchContacts event,
    Emitter<ContactState> emit,
  ) async {
    emit(const ContactLoading());

    try {
      // Simulate 1-second network delay
      await Future.delayed(const Duration(seconds: 1));

      // Mock successful fetch
      emit(
        ContactLoaded(
          contacts: _mockContacts,
        ),
      );
    } catch (e) {
      emit(
        ContactError(
          message: 'Failed to load contacts: ${e.toString()}',
        ),
      );
    }
  }

  Future<void> _onRefreshContacts(
    RefreshContacts event,
    Emitter<ContactState> emit,
  ) async {
    emit(const ContactLoading());

    try {
      // Simulate 1-second network delay
      await Future.delayed(const Duration(seconds: 1));

      // Mock successful refresh
      emit(
        ContactLoaded(
          contacts: _mockContacts,
        ),
      );
    } catch (e) {
      emit(
        ContactError(
          message: 'Failed to refresh contacts: ${e.toString()}',
        ),
      );
    }
  }
}
