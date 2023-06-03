import 'dart:convert';
import 'package:orderapp/features/auth/domain/entities/registration.dart';

class RegistrationDTO implements Registration {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  RegistrationDTO({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
    };
  }

  factory RegistrationDTO.fromMap(Map<String, dynamic> map) {
    return RegistrationDTO(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegistrationDTO.fromJson(String source) =>
      RegistrationDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  factory RegistrationDTO.fromRegistration(Registration registration) =>
      RegistrationDTO(
        name: registration.name,
        email: registration.email,
        password: registration.password,
      );
}
