

import 'package:orderapp/features/auth/data/dto/auth_response_dto.dart';

import 'package:orderapp/features/auth/data/dto/registration_dto.dart';

import 'package:orderapp/features/auth/data/dto/user_credentials_dto.dart';

import 'auth_data_source.dart';

class AuthAPI implements IAuthDataSource{
  @override
  Future<AuthResponseDTO> login(UserCredentialsDTO userCredentialsDTO) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<AuthResponseDTO> signup(RegistrationDTO registrationDTO) {
    // TODO: implement signup
    throw UnimplementedError();
  }

}