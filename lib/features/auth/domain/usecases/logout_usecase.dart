import 'package:dartz/dartz.dart';

import '../../error/auth_error.dart';
import '../repositories/auth_repository.dart';


abstract interface class ILogOutUseCase {
  Future<Either<AuthError, Unit>> call();
}

class LogOutUseCase implements ILogOutUseCase {
  final IAuthRepository authRepository;
  LogOutUseCase(this.authRepository);

  @override
  Future<Either<AuthError, Unit>> call(
      ) async {
    final result = await authRepository.logout();
    return result;
  }
}
