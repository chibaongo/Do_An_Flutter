import 'package:firebase_auth/firebase_auth.dart';

class Usergg {
  String uid;
  final String username;
  final String profilePhoto;

  Usergg({
    required this.uid,
    required this.username,
    required this.profilePhoto,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'username': username,
      'profilePhoto': profilePhoto,
    };
  }
}
