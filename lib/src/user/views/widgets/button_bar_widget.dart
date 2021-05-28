import 'package:flutter/material.dart';
import 'package:trales_app/src/user/controllers/bloc_user.dart';

class ButtonBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container tagButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white70,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.bookmark_outline,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container cardButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white38,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.card_giftcard,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container addButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xFF9575cd),
                      ),
                      iconSize: 40,
                      onPressed: () {},
                    )))));

    Container messageButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white38,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.mail_outline,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container closeSessionButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.00),
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.exit_to_app,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {
                        UserBloc().signOut();
                      },
                    )))));

    Container buttonBar = Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          tagButton,
          cardButton,
          addButton,
          messageButton,
          closeSessionButton,
        ],
      ),
    );

    return buttonBar;
  }
}
