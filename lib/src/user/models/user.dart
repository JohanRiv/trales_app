import 'package:flutter/material.dart';
import 'package:trales_app/src/posts/models/post.dart';

class UserTrales {
  final String userID;
  final String userName;
  final String userEmail;
  final String userPhotoUrl;
  final List<UserTrales> userFollows;
  final List<UserTrales> userFollowers;
  final List<Post> userPost;
  final List<Post> userFavoritePost;

  UserTrales({
    Key key,
    @required this.userID,
    @required this.userName,
    @required this.userEmail,
    @required this.userPhotoUrl,
    this.userFollows,
    this.userFollowers,
    this.userPost,
    this.userFavoritePost,
  });
}
