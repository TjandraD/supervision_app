import 'package:flutter/material.dart';
import 'package:supervision_app/screens/login_screen.dart';
import '../components/rounded_button.dart';
import '../screens/registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  width: 60,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Supervision Wikrama',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            RoundedButton(
              color: Colors.lightBlueAccent,
              title: 'Login',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              color: Colors.blueAccent,
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
