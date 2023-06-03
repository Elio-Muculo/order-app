part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoginEnvent extends AuthEvent {
  final UserCredentials userCredentials;

  const LoginEnvent(this.userCredentials);

  @override
  List<Object> get props => [userCredentials];
}

class SignUpEnvent extends AuthEvent {
  final Registration registration;

  const SignUpEnvent(this.registration);

  @override
  List<Object> get props => [registration];
}

class LogoutEnvent extends AuthEvent {
  const LogoutEnvent();
}
