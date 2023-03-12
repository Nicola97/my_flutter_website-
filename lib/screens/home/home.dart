import 'dart:js';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_2/screens/projects/projects.dart';
import 'package:flutter_portfolio_2/widgets/header/header.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/footer/footer.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';
  late double screenWidth;
  late double screenHeight;

  // NAVIGATION
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => Home(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    /*
     Acquisizione Grandezze schermo per Responsive Design
    */
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 715) {
          return desktopView();
        } else {
          return mobileView();
        }
      },
    );
    /*return Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          const Text("questa è la Home page"),
        ],
      ),
    );*/
  }

  Widget desktopView() {
    return Scaffold(
      //: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  //color: Color.fromARGB(255, 255, 255, 255),
                  height: screenHeight * 0.83,
                  width: screenWidth * 0.50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    /*
                    Presentazione Portfolio 
                    */
                    children: [
                      header(getFontisize(true)),
                      SizedBox(height: screenHeight * 0.05),

                      //subHeader('My Portfolio', getFontisize(true)),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'My Portfolio',
                            speed: Duration(milliseconds: 200),
                            textStyle: const TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                            ),
                          ),

                          TypewriterAnimatedText(
                            'A website made with Flutter',
                            speed: Duration(milliseconds: 200),
                            textStyle: const TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                            ),
                          ),
                          //   TypewriterAnimatedText(
                          //       'Do not patch bugs out, rewrite them'),
                          //   TypewriterAnimatedText(
                          //       'Do not test bugs out, design them out'),
                        ],
                      ),
                      //  SizedBox(height: screenHeight * 0.01),
                      //  subHeader('Flutter Developer', getFontisize(false)),
                      //  SizedBox(height: screenHeight * 0.01),
                      //  subHeader('Living World', getFontisize(false)),
                      //  SizedBox(height: screenHeight * 0.1),
                    ],
                  ),
                ),
                SizedBox(width: screenWidth * 0.03),
                picture(),
              ],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        picture(),
        SizedBox(height: screenHeight * 0.02),
        header(30),
        SizedBox(height: screenHeight * 0.01),
        subHeader(
            'computer Scientist - Flutter Developer - Flutter Enthusisast', 15),
      ],
    );
  }

  double getImageSize() {
    if (screenWidth > 1600 && screenHeight > 800) {
      return 400;
    } else if (screenWidth > 1300 && screenHeight > 600) {
      return 350;
    } else if (screenWidth > 1000 && screenHeight > 400) {
      return 300;
    } else {
      return 250;
    }
  }

  double getFontisize(bool isHeader) {
    double fontSize = screenWidth > 950 && screenHeight > 550 ? 20 : 15; //30 25
    return isHeader ? fontSize * 2.25 : fontSize;
  }

  Widget header(double fontSize) {
    return RichText(
      text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: fontSize),
          children: const <TextSpan>[
            TextSpan(
                text: "Hi I'm Nicola and this is",
                style: TextStyle(color: Colors.black)),
            // TextSpan(
            //    text: 'portfolio',
            //    style: TextStyle(color: Color.fromARGB(255, 13, 1, 105))),
            // TextSpan(text: '!'),
          ]),
    );
  }

  Widget subHeader(String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey[500], fontSize: fontSize),
    );
  }

  Widget picture() {
    return Container(
      height: getImageSize(),
      width: getImageSize(),
      //color: Colors.amber,

      child: Stack(
        children: <Widget>[
          /* Container(
            height: getImageSize(),
            width: getImageSize(),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color.fromARGB(235, 3, 9, 49),
                shape: BoxShape.circle,
              ),
            ),
          ),*/
          Container(
            height: getImageSize(),
            width: getImageSize(),
            child: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/pictureme.png'),
                    fit: BoxFit.contain,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
