import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Route_Generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [], // AnyProviders we used will me registered here
      child: MaterialApp(
        title: 'uhum',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'OpenSans',
        ),
        initialRoute: '/',
        onGenerateRoute:
            RouteGenerator.generateroute, // define routes in this file
      ),
    );
  }
}
