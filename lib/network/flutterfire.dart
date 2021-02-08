import 'package:firebase_auth/firebase_auth.dart';

// FirebaseAuth _auth = FirebaseAuth.instance;
Future<bool> login(String email, String password) async {
  bool result = false;
  try {
    final user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    result = true;
    print('The user was successfully logged in and result is $result ');
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
  return result;
}

Future<bool> register(String email, String password) async {
  bool result = false;
  try {
    final user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    result = true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
  return result;
}
