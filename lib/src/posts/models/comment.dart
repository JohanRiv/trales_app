import 'package:flutter/material.dart';

class Comment {
  final String commentID;
  final String commentPostID;
  final String commentDescription;
  final String commentUserOwner;

  Comment({
    Key key,
    @required this.commentID,
    @required this.commentPostID,
    @required this.commentDescription,
    @required this.commentUserOwner,
  });
}
