import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uhum/screens/authenticate/authenticate.dart';
import 'package:uhum/screens/home/home.dart';

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

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    /*autologin here
    if auth successfull show home page
    else show auth screen*/
    if (false)
      return HomePage();
    else
      return Authenticate();
  }
}
