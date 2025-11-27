// lib/presentation/blocs/auth/auth_state.dart

import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final String message;
  final dynamic data;

  AuthSuccess({required this.message, this.data});

  @override
  List<Object?> get props => [message, data];
}

class AuthFailure extends AuthState {
  final String error;

  AuthFailure(this.error);

  @override
  List<Object?> get props => [error];
}
