import 'package:flutter/material.dart';

class BigButtonWidget extends StatefulWidget {
  final String buttonText;
  final bool buttonPrimary;
  final double buttonHeight;
  final double buttonWidth;
  final VoidCallback onPressed;

  BigButtonWidget(
      {Key key,
      @required this.buttonText,
      @required this.buttonPrimary,
      @required this.buttonHeight,
      @required this.buttonWidth,
      @required this.onPressed});

  @override
  _BigButtonWidgetState createState() => _BigButtonWidgetState();
}

class _BigButtonWidgetState extends State<BigButtonWidget> {
  @override
  Widget build(BuildContext context) {
    InkWell buttonAction = InkWell(
      onTap: widget.onPressed,
      child: Container(
        alignment: Alignment(0, 0),
        height: widget.buttonHeight,
        width: widget.buttonWidth,
        decoration: decorationType(),
        child: Text(
          widget.buttonText,
          style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontFamily: "Lato",
              fontSize: 15,
              fontWeight: FontWeight.w700),
        ),
      ),
    );

    return buttonAction;
  }

  decorationType() {
    BoxDecoration buttonDecorationPrimary = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
            colors: [
              Color(0xFFb867c6),
              Color(0xFFb867c6),
            ],
            begin: FractionalOffset(0.2, 0),
            end: FractionalOffset(1, 0.6),
            stops: [0, 0.6],
            tileMode: TileMode.clamp));

    BoxDecoration buttonDecorationSecondary = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
            colors: [
              Color(0xFF9575cd),
              Color(0xFF9575cd),
            ],
            begin: FractionalOffset(0.2, 0),
            end: FractionalOffset(1, 0.6),
            stops: [0, 0.6],
            tileMode: TileMode.clamp));

    return widget.buttonPrimary == true
        ? buttonDecorationPrimary
        : buttonDecorationSecondary;
  }
}
