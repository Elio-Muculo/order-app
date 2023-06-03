import 'package:dartz/dartz.dart';

import '../../error/auth_error.dart';
import '../entities/auth_response.dart';
import '../entities/user_credential.dart';
import '../repositories/auth_repository.dart';


abstract interface class ILoginUseCase {
  Future<Either<AuthError, AuthResponse>> call(UserCredentials userCredentials);
}

class LoginUseCase implements ILoginUseCase {
  final IAuthRepository authRepository;
  LoginUseCase(this.authRepository);

  @override
  Future<Either<AuthError, AuthResponse>> call(
      UserCredentials userCredentials) async {
    final result = await authRepository.login(userCredentials);
    return result;
  }
}
