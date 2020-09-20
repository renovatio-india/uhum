import 'package:flutter/material.dart';
import 'package:uhum/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Authservice _auth = Authservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Sign in using email'),
          onPressed: () async {
            dynamic result = await _auth.signInPhone();
            if (result == null) {
              print('Error Signing in');
            } else {
              print('Signed in');
              print(result);
            }
          },
        ),
      ),
    );
  }
}
