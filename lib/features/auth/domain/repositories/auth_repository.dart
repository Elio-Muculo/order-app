import 'package:dartz/dartz.dart';


import '../../error/auth_error.dart';
import '../entities/auth_response.dart';
import '../entities/registration.dart';
import '../entities/user_credential.dart';

abstract interface class IAuthRepository {
  Future<Either<AuthError, AuthResponse>> login(
      UserCredentials userCredentials);

  Future<Either<AuthError, AuthResponse>> signup(
      Registration registration);  

  Future<Either<AuthError, Unit>> logout();      
}
