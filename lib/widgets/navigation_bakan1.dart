import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/favoriler_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/home_screen_bakan.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/robot_page.dart';
import 'package:meta_ozce_0/Screens/Profil/profil_page.dart';

class NavigationBakan1 extends StatefulWidget {
  int index;
  NavigationBakan1({this.index = 0});

  @override
  _NavigationBakan1State createState() => _NavigationBakan1State();
}

class _NavigationBakan1State extends State<NavigationBakan1> {
  int currentIndex = 0;
  final screens = [
    HomeScreenBakan(),
    FavPage(),
    RobotPageBakan(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('META OZCE'),
        centerTitle: true,
      ),
      body: screens[widget.index],
      bottomNavigationBar: CurvedNavigationBar(
          index: widget.index,
          backgroundColor: Colors.indigo.shade100,
          color: Theme.of(context).primaryColor,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) => setState(() {
                widget.index = index;
              }),
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            Image(
              image: AssetImage('assets/images/rob1.png'),
              height: 65,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            )
          ]),
    );
  }
}
