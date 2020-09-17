import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String ROUTNAME =
      "Homepage"; // Every Page should have a static rout name to be accessed in route_generator
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("This is my homepage"),
      ),
    );
  }
}
