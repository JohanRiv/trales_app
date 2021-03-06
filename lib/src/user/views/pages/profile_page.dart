import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trales_app/src/general_tools/views/widgets/background_widget.dart';
import 'package:trales_app/src/user/controllers/bloc_user.dart';
import 'package:trales_app/src/user/models/user.dart';
import 'package:trales_app/src/user/views/pages/login_page.dart';
import 'package:trales_app/src/user/views/widgets/button_bar_widget.dart';
import 'package:trales_app/src/user/views/widgets/profile_data_widget.dart';

class ProfilePage extends StatelessWidget {
  UserBloc userBloc;
  UserTrales user;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return StreamBuilder(
      stream: userBloc.streamFirebase,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.connectionState == ConnectionState.none) {
          return CircularProgressIndicator();
        } else if (snapshot.connectionState == ConnectionState.active) {
          return userLoginVerification(snapshot, context);
        } else if (snapshot.connectionState == ConnectionState.done) {
          return userLoginVerification(snapshot, context);
        } else {
          return LoginPage();
        }
      },
    );
  }

  Widget userLoginVerification(AsyncSnapshot snapshot, BuildContext context) {
    if (!snapshot.hasData || snapshot.hasError) {
      return LoginPage();
    } else {
      user = UserTrales(
          userID: snapshot.data.uid,
          userName: snapshot.data.displayName,
          userEmail: snapshot.data.email,
          userPhotoUrl: snapshot.data.photoURL);
      return userProfileWidget(context);
    }
  }

  Widget userProfileWidget(BuildContext context) {
    Text titleLabel = Text(
      "Profile",
      style: TextStyle(
          color: Colors.white,
          fontFamily: "Lato",
          fontSize: 30,
          fontWeight: FontWeight.w900),
    );

    Container settingsButton = Container(
        child: IconButton(
      icon: const Icon(
        Icons.settings,
        color: Colors.white38,
      ),
      iconSize: 15,
      color: Colors.transparent,
      onPressed: () {},
    ));

    Container profileBlock = Container(
        width: MediaQuery.of(context).size.width * 1,
        height: 320,
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
        margin: EdgeInsets.only(top: 0, left: 0, right: 0),
        child: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [titleLabel, settingsButton]),
              ProfileDataWidget(
                  user.userName, user.userEmail, user.userPhotoUrl),
              ButtonBarWidget()
            ],
          ),
        ));

    Container userSites = Container(
      margin: EdgeInsets.only(left: 10, top: 340),
      child: Column(
        children: [
          /* ImagePublicationWidget(
              "",
              "Ciudad de las Artes y la Ciencia",
              "Es un complejo arquitect??nico, cultural y de entretenimiento de la ciudad de Valencia (Espa??a).",
              "122,324"),
          ImagePublicationWidget(
              "",
              "Catedral de Murcia",
              "Santa Iglesia Catedral de Santa Mar??a, ??? conocida como Catedral de Murcia",
              "234,456"),
          ImagePublicationWidget(
              "",
              "Teatro Romano",
              "Es un teatro de ??poca romana, construido entre los a??os 5 y 1 a. C. en la ciudad de Carthago Nova, actual Cartagena (Espa??a).",
              "344,345"), */
        ],
      ),
    );

    Stack profileUserStack = Stack(
      children: [
        BackgroundWidget(
          height: MediaQuery.of(context).size.height * 0.45,
          width: MediaQuery.of(context).size.width,
          backgroundColor: true,
          imagePath: "",
        ),
        ListView(
          children: [
            userSites,
          ],
        ),
        profileBlock,
      ],
    );

    return profileUserStack;
  }
}
