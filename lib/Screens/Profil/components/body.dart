import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: Icon(
              Icons.person,
            ),
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: Icon(Icons.notifications),
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: Icon(Icons.settings),
            press: () {},
          ),
          ProfileMenu(
            text: "Feedbacks",
            icon: Icon(Icons.feedback),
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: Icon(Icons.logout),
            press: () {},
          ),
        ],
      ),
    );
  }
}
