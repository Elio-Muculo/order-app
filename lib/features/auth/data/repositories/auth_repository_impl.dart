import 'package:dartz/dartz.dart';
import 'package:orderapp/features/auth/data/dto/auth_response_dto.dart';
import 'package:orderapp/features/auth/data/dto/registration_dto.dart';
import 'package:orderapp/features/auth/data/dto/user_credentials_dto.dart';
import 'package:orderapp/features/auth/domain/entities/auth_response.dart';
import 'package:orderapp/features/auth/domain/entities/registration.dart';
import 'package:orderapp/features/auth/domain/entities/user_credential.dart';

import '../../domain/repositories/auth_repository.dart';
import '../../error/auth_error.dart';
import '../data_source/auth_data_source.dart';

class AuthRepository implements IAuthRepository {
  final IAuthDataSource authDataSource;

  AuthRepository(this.authDataSource);

  @override
  Future<Either<AuthError, AuthResponse>> login(
      UserCredentials userCredentials) async {
    AuthResponseDTO authResponseDTO;
    try {
      authResponseDTO = await authDataSource
          .login(UserCredentialsDTO.fromUserCredentials(userCredentials));
      return right(authResponseDTO);
    } catch (e) {
      return left(ConnectionError());
    }
  }

  @override
  Future<Either<AuthError, Unit>> logout() async {
    try {
      await authDataSource.logout();
      return right(Unit as Unit);
    } catch (e) {
      return left(ConnectionError());
    }
  }

  @override
  Future<Either<AuthError, AuthResponse>> signup(
      Registration registration) async {
    AuthResponseDTO authResponseDTO;
    try {
      authResponseDTO = await authDataSource
          .signup(RegistrationDTO.fromRegistration(registration));
      return right(authResponseDTO);
    } catch (e) {
      return left(ConnectionError());
    }
  }
}
