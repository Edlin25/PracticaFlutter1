import 'package:flutter/material.dart';
import 'package:flutter_application_4/pizza.dart';
import 'package:flutter_application_4/login.dart';
import 'package:flutter_application_4/register.dart';

void main() {
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
        'login': (context) => const WidgetLogin(),
        'register': (context) => const WidgetRegister()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
    );
  }
}
