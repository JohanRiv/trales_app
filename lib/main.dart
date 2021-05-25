import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trales_app/src/general_tools/views/widgets/navbar_widget.dart';
import 'package:trales_app/src/user/controllers/bloc_user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          home: Scaffold(
            body: NavBarWidget(),
          ),
        ),
        bloc: UserBloc());
  }
}
