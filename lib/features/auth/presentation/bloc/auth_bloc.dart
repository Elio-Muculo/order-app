import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:orderapp/features/auth/domain/entities/registration.dart';
import 'package:orderapp/features/auth/domain/entities/user_credential.dart';
import 'package:orderapp/features/auth/domain/usecases/login_usecase.dart';
import 'package:orderapp/features/auth/domain/usecases/logout_usecase.dart';
import 'package:orderapp/features/auth/domain/usecases/signup_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final SignUpUseCase signUpUseCase;
  final LogOutUseCase logOutUseCase;
  AuthBloc(
    this.loginUseCase,
    this.signUpUseCase,
    this.logOutUseCase,
  ) : super(const AuthInitial()) {
    on<LoginEnvent>((event, emit) async {
      emit(const LoadingState());
      final result = await loginUseCase(event.userCredentials);
      emit(
        result.fold(
          (l) => const ErrorState(),
          (r) => const SuccessState(),
        ),
      );
    });
    on<SignUpEnvent>((event, emit) async {
      emit(const LoadingState());
      final result = await signUpUseCase(event.registration);
      emit(
        result.fold(
          (l) => const ErrorState(),
          (r) => const SuccessState(),
        ),
      );
    });
    on<LogoutEnvent>((event, emit) async {
      emit(const LoadingState());
      final result = await logOutUseCase();
      emit(
        result.fold(
          (l) => const ErrorState(),
          (r) => const SuccessState(),
        ),
      );
    });
  }
}
