import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Login/components/background.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/home_screen_konak.dart';
import 'package:meta_ozce_0/Screens/QrCode/qrCode_screen.dart';
import 'package:meta_ozce_0/components/rounded_button.dart';
import 'package:meta_ozce_0/constants.dart';
import 'package:meta_ozce_0/widgets/navigation_konak.dart';

import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';

class Body extends StatelessWidget {
  final urlImage = "assets/images/rob3.png";
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Image.asset(
              urlImage,
              height: size.height * 0.38,
            ),
            RoundedInputField(
              hintText: "Oda Numarası",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "GİRİŞ YAP",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NavigationKonak();
                    },
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Parolayı unuttuysanız resepsiyondan alabilirsiniz.",
                  style: TextStyle(color: kPrimaryColor, fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "(RESEPSİYONU ARA)",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
