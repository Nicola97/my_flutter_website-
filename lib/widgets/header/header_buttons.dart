import 'package:flutter/material.dart';

import '../../screens/home/home.dart';
import 'dart:html' as html;

import '../../screens/projects/projects.dart';

class HeaderButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double tabBarScaling = screenWidth > 1400
        ? 0.5
        : screenWidth > 1100
            ? 0.6
            : 0.7;
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 30,
          ),
          TextButton(
            child: const Text("Home"),
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: Theme.of(context).textTheme.headlineMedium),
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration.zero,
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secanimation,
                          Widget child) {
                        return ScaleTransition(
                          alignment: Alignment.center,
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secanimation) {
                        return Home();
                      }));
              html.window.history.pushState(null, "Home", "/home");
            }, //Navigator.pushNamed(context, '/'),
          ),
          SizedBox(
            width: 30,
          ),
          TextButton(
            child: const Text("Projects"),
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: Theme.of(context).textTheme.headlineMedium),
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration.zero,
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secanimation,
                          Widget child) {
                        return ScaleTransition(
                          alignment: Alignment.center,
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secanimation) {
                        return Projects();
                      }));
              html.window.history.pushState(null, "Projects", "/Projects");
            },

            //Navigator.pushNamed(context, '/projects'),
          ),

          /* MaterialButton(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              onPressed: () => context.go('/projects'),
              child: Text("Projects"),
            )*/
        ],
      ),
    );
  }
}
