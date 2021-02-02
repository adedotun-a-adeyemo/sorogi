import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sorogi/constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Image.asset(
                'assets/sorogi_stacked.png',
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 25.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your Password'),
            ),
            SizedBox(
              height: 25.0,
            ),
            MaterialButton(
              color: kMainThemeColor,
              height: 45.0,
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
