import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trales_app/src/general_tools/views/widgets/background_widget.dart';
import 'package:trales_app/src/general_tools/views/widgets/big_button_widget.dart';
import 'package:trales_app/src/user/controllers/bloc_user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String logoPath = "assets/images/trales_icon_text.png";
  UserBloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return loginGoogleUI();
  }

  Widget loginGoogleUI() {
    Container logo = Container(
      margin: EdgeInsets.only(top: 10),
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(logoPath),
          )),
    );

    Container loginText = Container(
      width: MediaQuery.of(context).size.width * 0.8,
      // margin: EdgeInsets.only(top: 100, left: 40, right: 40, bottom: 50),
      child: Text(
        "Comparte y conoce experiencias de viajes unicas y encantadoras",
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Color(0xFFFFFFFF)),
        textAlign: TextAlign.center,
      ),
    );

    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        BackgroundWidget(
            MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width,
            false,
            "assets/images/background.png"),
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  logo,
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  loginText,
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigButtonWidget(
                      buttonText: "Iniciar sesión con Google",
                      buttonPrimary: false,
                      buttonHeight: 50,
                      buttonWidth: MediaQuery.of(context).size.width * 0.7,
                      onPressed: () {
                        userBloc
                            .login()
                            .then((value) => print('Datos: ${value.email}'));
                      })
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
