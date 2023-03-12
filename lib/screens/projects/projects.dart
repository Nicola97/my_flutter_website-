import 'package:flutter/material.dart';
import 'package:flutter_portfolio_2/screens/projects/src.dart';
import 'package:flutter_portfolio_2/widgets/header/header.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/footer/footer.dart';

class Projects extends StatelessWidget {
  late double screenWidth;
  late double screenHeight;
  static const String routeName = '/projects';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => Projects(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(),
          Container(
            height: screenHeight * 0.83,
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InteractiveCard(
                  image: cards[0].image,
                  title: cards[0].title,
                  description: cards[0].description,
                ),
                InteractiveCard(
                  image: cards[1].image,
                  title: cards[1].title,
                  description: cards[1].description,
                ),
                InteractiveCard(
                  image: cards[2].image,
                  title: cards[2].title,
                  description: cards[2].description,
                ),
                InteractiveCard(
                  image: cards[3].image,
                  title: cards[3].title,
                  description: cards[3].description,
                ),
              ],
            ),
          ),
          Footer(),
        ],
      ),

      /*  Column(
            height: screenHeight * 0.83,
            width: screenWidth,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: screenHeight,
                    //color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InteractiveCard(
                          image: cards[0].image,
                          title: cards[0].title,
                          description: cards[0].description,
                        ),
                        InteractiveCard(
                          image: cards[1].image,
                          title: cards[1].title,
                          description: cards[1].description,
                        ),
                        InteractiveCard(
                          image: cards[2].image,
                          title: cards[2].title,
                          description: cards[2].description,
                        ),
                        InteractiveCard(
                          image: cards[3].image,
                          title: cards[3].title,
                          description: cards[3].description,
                        ),
                      ],
                    ),
                  ),
                  //      Container(
                  //        height: 500,
                  //        width: 200,
                  //        color: Colors.amber.shade100,
                  //      ),
              
          
                  Footer(),
              
                ],
              ),
            ),
          ),*/
      // const Text("questa è la pagina dei miei progetti")
    );
  }
}

class InteractiveCard extends StatefulWidget {
  final String? image;
  final String? title;
  final String? description;
  const InteractiveCard({Key? key, this.description, this.image, this.title})
      : super(key: key);

  @override
  State<InteractiveCard> createState() => _InteractiveCardState();
}

class _InteractiveCardState extends State<InteractiveCard> {
  double height = 300.0;
  double width = 100.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          height = 340.0;
          width = 340.0;
        });
      },
      onExit: (event) {
        setState(() {
          height = 300.0;
          width = 100.0;
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(10.0),
        duration: const Duration(milliseconds: 575),
        curve: Curves.easeOut,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(widget.image!),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.blue,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AnimatedRotation(
                duration: const Duration(milliseconds: 375),
                turns: height == 300.0 ? -1 / 4 : 0,
                curve: Curves.easeOut,
                child: AnimatedPadding(
                  duration: const Duration(milliseconds: 375),
                  padding: EdgeInsets.symmetric(
                      vertical: height == 300.0 ? 20.0 : 0.0),
                  child: Text(
                    widget.title!,
                    style: Theme.of(context).textTheme.bodyMedium, //TextStyle(
                    //color: Colors.black,
                    //fontSize: 16.0,
                    //fontWeight: FontWeight.w400,
                    //),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 375),
                curve: Curves.easeOut,
                height: height == 300.0 ? 40.0 : 80.0,
                width: 320.0,
                color: Colors.transparent,
                padding: EdgeInsets.only(
                  top: height == 300.0 ? 100.0 : 20.0,
                ),
                clipBehavior: Clip.antiAlias,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 375),
                  opacity: height == 300.0 ? 0.0 : 1.0,
                  child: OverflowBox(
                    minHeight: 80.0,
                    minWidth: 300.0,
                    maxHeight: 100.0,
                    maxWidth: 320.0,
                    child: Text(
                      widget.description!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
