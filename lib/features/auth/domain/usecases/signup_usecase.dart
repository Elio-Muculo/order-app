import 'package:dartz/dartz.dart';

import '../../error/auth_error.dart';
import '../entities/auth_response.dart';
import '../entities/registration.dart';
import '../repositories/auth_repository.dart';


abstract interface class ISignUpUseCase {
  Future<Either<AuthError, AuthResponse>> call(Registration registration);
}

class SignUpUseCase implements ISignUpUseCase {
  final IAuthRepository authRepository;
  SignUpUseCase(this.authRepository);

  @override
  Future<Either<AuthError, AuthResponse>> call(
      Registration registration) async {
    final result = await authRepository.signup(registration);
    return result;
  }
}
