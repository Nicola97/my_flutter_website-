import 'package:flutter/material.dart';
import 'package:flutter_portfolio_2/screens/home/home.dart';
import 'package:flutter_portfolio_2/screens/projects/projects.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;

import 'header_buttons.dart';

class Header extends StatelessWidget {
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
      height: 50,
      //width: screenWidth * tabBarScaling,
      child:
          // width: screenWidth* tabBarScaling,
          /*child: Theme(
          data: ThemeData(
            highlightColor: Colors.red,
            splashColor: Colors.red,
            hoverColor: Colors.red,
          ), */

          HeaderButtons(),
    );
  }
}
