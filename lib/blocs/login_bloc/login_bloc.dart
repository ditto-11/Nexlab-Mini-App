import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginInitial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
    on<LoginReset>(_onLoginReset);
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginLoading());

    try {
      // Simulate 2-second network delay
      await Future.delayed(const Duration(seconds: 2));

      // Mock validation
      if (event.email.isEmpty || event.password.isEmpty) {
        emit(
          const LoginFailure(
            error: 'Email and password cannot be empty',
          ),
        );
        return;
      }

      if (!event.email.contains('@')) {
        emit(
          const LoginFailure(
            error: 'Please enter a valid email address',
          ),
        );
        return;
      }

      if (event.password.length < 6) {
        emit(
          const LoginFailure(
            error: 'Password must be at least 6 characters',
          ),
        );
        return;
      }

      // Mock successful authentication
      emit(
        LoginSuccess(
          message: 'Welcome, ${event.email.split('@').first}!',
        ),
      );
    } catch (e) {
      emit(
        LoginFailure(
          error: 'An unexpected error occurred: ${e.toString()}',
        ),
      );
    }
  }

  Future<void> _onLoginReset(
    LoginReset event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginInitial());
  }
}
