// import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_4/config/theme/colors.dart';
import 'package:flutter_application_4/models/usuario.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/screens/home.dart';

class SignInController extends GetxController {
  String email = '';
  String password = '';

  handleEmail(String newEmail) {
    email = newEmail;
    update();
  }

  handlePassword(String newPassword) {
    password = newPassword;
    update();
  }

  handleSignIn() async {
    // print(email);
    if (email == '' || password == '') {
      print('primer hola');
      return;
    }
    try {
      print('Hola $email');
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email.toLowerCase(), password: password);
      print(credential);
      if (credential.user != null) {
        print('hola');
        Usuarios? usuario = await getUser(credential.user!.uid);
        if (usuario != null) {
          // Get.offAll(() => HomeScreen(usuario: usuario));
        }
      }
      // Get.to(() => const HomeScreen());
    } on FirebaseAuthException catch (e) {
      Get.dialog(AlertDialog(
        backgroundColor: ColorsApp.primaryColor.withOpacity(0.75),
        title: const Text(
          'Error',
          style: TextStyle(color: Colors.white),
        ),
        content: Text(e.code, style: const TextStyle(color: Colors.white)),
      ));
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<Usuarios?> getUser(String id) async {
    Usuarios usuario;
    final db = FirebaseFirestore.instance;
    final docRef = db.collection("Usuarios").doc(id);
    usuario = await docRef.get().then(
      (DocumentSnapshot<Map<String, dynamic>> doc) {
        return Usuarios.fromFirestore(doc);
        // ...
      },
      onError: (e) => print("Error getting document: $e"),
    );
    return usuario;
  }
}
