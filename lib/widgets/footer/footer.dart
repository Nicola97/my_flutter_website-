import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_icon_buttons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  //const BottomBar({Key Key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                height: 2,
                width: screenWidth * 0.90,
                color: Color.fromARGB(235, 3, 9, 49)),
          ),
          SizedBox(
            height: screenHeight * 0.05,
            child: Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const CustomIconButton(
                          iconData: FontAwesomeIcons.youtube,
                          url:
                              "https://www.youtube.com/channel/UCjd-Xgz6gl-g_QZ_WAhG66g",
                          Color: Colors.black),
                      SizedBox(width: screenWidth * 0.021),
                      const CustomIconButton(
                          iconData: FontAwesomeIcons.github,
                          url: "https://github.com/Nicola97",
                          Color: Colors.black),
                      SizedBox(width: screenWidth * 0.021),
                      const CustomIconButton(
                          iconData: FontAwesomeIcons.linkedin,
                          url: "https://www.linkedin.com/in/nicola-quattrone/",
                          Color: Colors.black),
                      SizedBox(width: screenWidth * 0.021),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: const Text(
                          "Made with Flutter Web \u00a9 2023",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
