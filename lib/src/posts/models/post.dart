import 'package:flutter/material.dart';
import 'package:trales_app/src/posts/models/comment.dart';
import 'package:trales_app/src/user/models/user.dart';

class Post {
  final String postID;
  final String postName;
  final String postLocationMap;
  final UserTrales postOwner;
  final List<String> postKeyWordsList;
  final List<String> postHashtagsList;
  final List<String> postPhotoUrlList;
  final List<Comment> postCommentsList;

  Post(
      {Key key,
      @required this.postID,
      @required this.postName,
      @required this.postOwner,
      @required this.postPhotoUrlList,
      this.postLocationMap,
      this.postKeyWordsList,
      this.postHashtagsList,
      this.postCommentsList});
}
