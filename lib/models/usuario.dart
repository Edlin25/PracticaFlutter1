import 'package:cloud_firestore/cloud_firestore.dart';

class Usuarios {
  final String username;
  final String email;
  final String password;

  Usuarios({
    required this.username,
    required this.email,
    required this.password,
  });

  factory Usuarios.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data();
    return Usuarios(
      username: data?['username'],
      email: data?['email'],
      password: data?['password'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (username != null) "username": username,
      if (email != null) "email": email,
      if (password != null) "password": password,
    };
  }
}
