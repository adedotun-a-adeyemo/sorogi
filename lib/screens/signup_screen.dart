import 'package:flutter/material.dart';
import 'package:sorogi/network/flutterfire.dart';
import 'package:sorogi/screens/dashboard_screen.dart';
import 'package:sorogi/screens/login_screen.dart';
import 'package:sorogi/widgets/roundedbutton.dart';

import '../constants.dart';

class SignupScreen extends StatefulWidget {
  static String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/sorogi_stacked.png',
                  ),
                ),
              ),
              TextFormField(
                controller: _email,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                controller: _password,
                obscureText: true,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your Password'),
              ),
              SizedBox(
                height: 25.0,
              ),
              RoundedButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await register(_email.text, _password.text);
                  if (shouldNavigate) {
                    Navigator.pushNamed(context, DashboardScreen.id);
                  }
                },
                label: 'Sign Up',
                color: kMainThemeColor,
              ),
              SizedBox(
                height: 25.0,
              ),
              RoundedButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                label: 'Login',
                color: kPrimaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//kPrimaryColor
//'Login'
