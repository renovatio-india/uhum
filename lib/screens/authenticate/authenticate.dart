import 'package:flutter/material.dart';

class Authenticate extends StatelessWidget {
  static const String ROUTNAME = "authScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Login or Reg screen"),
      ),
    );
  }
}
