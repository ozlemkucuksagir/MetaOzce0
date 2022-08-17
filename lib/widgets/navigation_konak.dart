import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/home_screen_konak.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/robot_page_konaklayan.dart';
import 'package:meta_ozce_0/Screens/Profil/profil_page.dart';
import 'package:meta_ozce_0/widgets/change_thema.dart';

class NavigationKonak extends StatefulWidget {
  int index;

  NavigationKonak({this.index = 0});

  @override
  _NavigationKonakState createState() => _NavigationKonakState();
}

class _NavigationKonakState extends State<NavigationKonak> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreenKonak(),
      RobotPageKonak(),
      ProfileScreen(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('META OZCE'),
        backgroundColor: Colors.blue.shade600,
        centerTitle: true,
      ),
      body: screens[widget.index],
      bottomNavigationBar: CurvedNavigationBar(
          index: widget.index,
          backgroundColor: Colors.indigo.shade100,
          color: Colors.blue.shade600,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) => setState(() {
                widget.index = index;
              }),
          items: [
            Icon(
              Icons.home,
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
