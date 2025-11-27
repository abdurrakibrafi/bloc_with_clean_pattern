// lib/presentation/blocs/auth/auth_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    /// -----------------------------
    /// 🔹 SIGN IN
    /// -----------------------------
    on<SignInRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final result = await authRepository.signIn(event.email, event.password);

        emit(
          AuthSuccess(
            message: result["message"] ?? "Login Successful",
            data: result["data"],
          ),
        );
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}
