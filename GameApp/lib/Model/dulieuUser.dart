import 'package:firebase_auth/firebase_auth.dart';

class Usera {
  String id;
  final String name;
  final String phone;
  final String email;
  final String avatar;

  Usera({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.avatar,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'avatar': avatar,
    };
  }
}
