part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class LoadingState extends AuthState {
  const LoadingState();
}

class SuccessState extends AuthState {
  const SuccessState();
}


class ErrorState extends AuthState {
  const ErrorState();
}
