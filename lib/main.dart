import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'package:trales_app/src/posts/controllers/bloc_post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Trales App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: null,
        ),
        bloc: PostBloc());
  }
}
