import 'package:flutter/material.dart';
import 'package:uhum/screens/authenticate/login.dart';
import 'package:uhum/screens/authenticate/registration.dart';


// class Authenticate extends StatelessWidget {
  


//   @override
//   Widget build(BuildContext context) {
     
//   }
// }

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  static const String ROUTNAME = "authScreen";
   bool showSignIn = true;


  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Registration(toggleView: toggleView);
    }
  }
}
