import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_4/models/usuario.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_4/presentation/screens/home.dart';

class SignUpController extends GetxController {
  String email = '';
  String password = '';
  String username = '';

  handleEmail(String newEmail) {
    email = newEmail;
    update();
  }

  handlePassword(String newPassword) {
    password = newPassword;
    update();
  }

  handleName(String newName) {
    username = newName;
    update();
  }

  handleSignUp() async {
    if (email == '' || password == '' || username == '') {
      return;
    }
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user != null) {
        print('Entro aca');
        final user = saveUserInDB(credential.user!.uid);
        Get.offAll(() => HomeScreen(
              usuario: user,
            ));
      }
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.code,
          backgroundColor: Colors.blue[100],
          duration: const Duration(seconds: 5));
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Usuarios saveUserInDB(
    String id,
  ) {
    final user = Usuarios(username: username, email: email, password: password);
    final db = FirebaseFirestore.instance;
    db
        .collection("Usuarios")
        .doc(id)
        .set(user.toFirestore())
        .onError((e, _) => print("Error writing document: $e"));

    return user;
  }
}
