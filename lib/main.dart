import 'package:flutter/material.dart';
import 'package:form_login/form_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormScreen(),
      routes: {
        FormScreen.routes: (context) => const FormScreen(),
      },
    );
  }
}
