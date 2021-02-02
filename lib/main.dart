import 'package:flutter/material.dart';
import 'package:sorogi/screens/login_screen.dart';
import 'package:sorogi/screens/signup_screen.dart';

void main() {
  runApp(Sorogi());
}

class Sorogi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
      },
    );
  }
}
