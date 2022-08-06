import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta_ozce_0/widgets/sehir_crousel.dart';

class HomeScreenBakan extends StatefulWidget {
  @override
  _HomeScreenBakanState createState() => _HomeScreenBakanState();
}

class _HomeScreenBakanState extends State<HomeScreenBakan> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: _icons
            //       .asMap()
            //       .entries
            //       .map(
            //         (MapEntry map) => _buildIcon(map.key),
            //       )
            //       .toList(),
            // ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                'Sana en uygun oteli keşfet!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(height: 20.0),
            Sehir(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
