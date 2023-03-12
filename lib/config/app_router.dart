import 'package:flutter/material.dart';
import 'package:flutter_portfolio_2/screens/home/home.dart';
import 'package:flutter_portfolio_2/screens/projects/projects.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("the Route is: ${settings.name}");
    switch (settings.name) {
      case '/':
        return Home.route();
      case Home.routeName:
        return Home.route();
      case Projects.routeName:
        return Projects.route();
        break;

      default:
        return Home.route();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'))),
      settings: RouteSettings(name: 'error'),
    );
  }
}
