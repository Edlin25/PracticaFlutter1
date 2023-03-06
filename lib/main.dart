import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:get/get.dart';
import 'package:flutter_application_4/presentation/screens/pizza.dart';
import 'package:flutter_application_4/presentation/screens/login.dart';
import 'package:flutter_application_4/presentation/screens/register.dart';
// Import the generated file

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        'home': (context) => const WidgetPedidoPizza(),
        'login': (context) => WidgetLogin(),
        'register': (context) => WidgetRegister()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
    );
  }
}
