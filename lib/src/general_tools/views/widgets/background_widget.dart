import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  double height = 0.0;
  double width = 0.0;
  bool backgroundColor = true;
  String imagePath = "";

  BackgroundWidget({
    Key key,
    @required this.height,
    @required this.width,
    @required this.backgroundColor,
    @required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    Container backgroundColorContainer = Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF9575cd),
                  Color(0xFF7986cb),
                ],
                begin: FractionalOffset(0.2, 0),
                end: FractionalOffset(1, 0.6),
                stops: [0, 0.6],
                tileMode: TileMode.clamp)),
        margin: EdgeInsets.only(top: 0, left: 0, right: 0));

    Container backgroundImageContainer = Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover)),
        margin: EdgeInsets.only(top: 0, left: 0, right: 0));

    return (backgroundColor == true
        ? backgroundColorContainer
        : backgroundImageContainer);
  }
}
