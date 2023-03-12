import 'package:flutter/material.dart';
import 'package:flutter_portfolio_2/config/app_router.dart';
import 'package:flutter_portfolio_2/screens/home/home.dart';
import 'package:url_strategy/url_strategy.dart';

import 'config/theme.dart';

void main() {
  setPathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: 'My portfolio',
      theme: MyTheme.lighTheme,
      initialRoute: Home.routeName,
      onGenerateRoute: AppRouter.onGenerateRoute,
      //theme: ThemeData(primarySwatch: Colors.b),
      //routerConfig: _router,
      //routeInformationParser: _router.routeInformationParser,
      //routerDelegate: _router.routerDelegate,
      //home: Home(),
    );
  }
}

/*
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => Home(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => Projects(),
    ),
    GoRoute(
      path: "/projects",
      builder: (context, state) => Projects(),
    )
  ],
);*/
