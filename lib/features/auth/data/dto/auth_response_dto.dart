import 'dart:convert';
import 'package:orderapp/features/auth/domain/entities/auth_response.dart';

class AuthResponseDTO implements AuthResponse {
  @override
  final bool success;
  @override
  final String message;

  const AuthResponseDTO({
    required this.success,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'message': message,
    };
  }

  factory AuthResponseDTO.fromMap(Map<String, dynamic> map) {
    return AuthResponseDTO(
      success: map['success'] as bool,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthResponseDTO.fromJson(String source) => AuthResponseDTO.fromMap(json.decode(source) as Map<String, dynamic>);
}
