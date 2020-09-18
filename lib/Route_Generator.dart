import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uhum/screens/home/home.dart';
import 'package:uhum/screens/wrapper.dart';

import 'main.dart';

class RouteGenerator {
  static Route<dynamic> generateroute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Wrapper());
        break;
      case HomePage.ROUTNAME:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      default:
        //check auth here
        if (true)
          return MaterialPageRoute(builder: (_) => Wrapper());
        else
          return MaterialPageRoute(builder: (_) => HomePage());
        break;
    }
  }
}
