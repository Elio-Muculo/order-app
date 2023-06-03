
import '../dto/auth_response_dto.dart';
import '../dto/registration_dto.dart';
import '../dto/user_credentials_dto.dart';

abstract interface class IAuthDataSource {
  Future<AuthResponseDTO> login(UserCredentialsDTO userCredentialsDTO);
  Future<AuthResponseDTO> signup(RegistrationDTO registrationDTO);
  Future<void> logout();
}
