import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Login/login_screen.dart';
import 'package:meta_ozce_0/Screens/Welcome/components/background.dart';
import 'package:meta_ozce_0/constants.dart';

import '../../../components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provide us total hight and width of our screen

    final urlImage = "assets/images/rob1.png";
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "METAOZCE'YE HOŞ GELDİNİZ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Image.asset(
              urlImage,
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "OTEL KULLANICISI GİRİŞİ",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "MİSAFİR KULLANICI",
              color: kPrimaryLightColor,
              press: () {},
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
