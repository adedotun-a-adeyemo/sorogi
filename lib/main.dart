import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sorogi/screens/dashboard_screen.dart';
import 'package:sorogi/screens/login_screen.dart';
import 'package:sorogi/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        DashboardScreen.id: (context) => DashboardScreen(),
      },
    );
  }
}
