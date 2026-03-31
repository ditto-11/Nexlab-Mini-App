part of 'contact_bloc.dart';

abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<Object> get props => [];
}

class ContactInitial extends ContactState {
  const ContactInitial();
}

class ContactLoading extends ContactState {
  const ContactLoading();
}

class ContactLoaded extends ContactState {
  final List<Map<String, String>> contacts;

  const ContactLoaded({
    required this.contacts,
  });

  @override
  List<Object> get props => [contacts];
}

class ContactError extends ContactState {
  final String message;

  const ContactError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
