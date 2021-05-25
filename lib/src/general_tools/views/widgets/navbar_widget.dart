import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trales_app/src/home/views/pages/home_page.dart';
import 'package:trales_app/src/posts/views/pages/post_page.dart';
import 'package:trales_app/src/search/views/pages/search_page.dart';
import 'package:trales_app/src/user/views/pages/login_page.dart';
import 'package:trales_app/src/user/views/pages/profile_page.dart';
import 'package:trales_app/src/notification/views/pages/notification_page.dart';

class NavBarWidget extends StatefulWidget {
  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int tapIndex = 0;
  final List<Widget> tapView = [
    LoginPage(),
    SearchPage(),
    PostPage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    Scaffold generalNavBar = Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_location_outlined,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Color(0xFF7986cb),
            ),
            label: "",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => LoginPage(),
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (context) => SearchPage(),
            );
            break;
          case 2:
            return CupertinoTabView(
              builder: (context) => PostPage(),
            );
            break;
          case 3:
            return CupertinoTabView(
              builder: (context) => NotificationPage(),
            );
            break;
          case 4:
            return CupertinoTabView(
              builder: (context) => ProfilePage(),
            );
            break;
          default:
            return CupertinoTabView(
              builder: (context) => HomePage(),
            );
            break;
        }
      },
    ));
    return generalNavBar;
  }

  void onTapTapped(int index) {
    setState(() {
      tapIndex = index;
    });
  }
}
