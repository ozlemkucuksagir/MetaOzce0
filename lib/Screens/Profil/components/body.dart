import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/feedback_page.dart';
import 'package:meta_ozce_0/Screens/Welcome/welcome_screen.dart';
import 'package:meta_ozce_0/widgets/change_thema.dart';

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
            text: "Hesap",
            icon: Icon(
              Icons.person,
            ),
            press: () => {},
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text('Gece Modu',
                  style: TextStyle(
                    fontSize: 17,
                  )),
              SizedBox(
                width: 210,
              ),
              ChangeThemeButtonWidget(),
            ],
          ),
          ProfileMenu(
            text: "Bildirimler",
            icon: Icon(Icons.notifications),
            press: () {},
          ),
          ProfileMenu(
            text: "Ayarlar",
            icon: Icon(Icons.settings),
            press: () {},
          ),
          ProfileMenu(
            text: "Geri Dönüş",
            icon: Icon(Icons.feedback),
            press: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyWidget())),
          ),
          ProfileMenu(
            text: "Çıkış Yap",
            icon: Icon(Icons.logout),
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => WelcomeScreen())),
          ),
        ],
      ),
    );
  }
}
