// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:orderapp/features/auth/domain/entities/user_credential.dart';

class UserCredentialsDTO implements UserCredentials {
  @override
  final String email;
  @override
  final String password;

  UserCredentialsDTO({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory UserCredentialsDTO.fromMap(Map<String, dynamic> map) {
    return UserCredentialsDTO(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserCredentialsDTO.fromJson(String source) =>
      UserCredentialsDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  factory UserCredentialsDTO.fromUserCredentials(
          UserCredentials userCredentials) =>
      UserCredentialsDTO(
        email: userCredentials.email,
        password: userCredentials.password,
      );
}
