import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:supervision_app/screens/registration_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';

void main() async {
  runApp(SupervisionApp());
  await Firebase.initializeApp();
}

class SupervisionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
