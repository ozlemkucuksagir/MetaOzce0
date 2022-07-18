import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Login/components/background.dart';
import 'package:meta_ozce_0/components/rounded_button.dart';

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
            Text(
              "LOGIN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                  fontSize: 15),
            ),
            Image.asset(
              urlImage,
              height: size.height * 0.33,
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
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.008,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Parolayı unuttuysanız resepsiyondan alabilirsiniz.",
                  style: TextStyle(color: Colors.indigo, fontSize: 13),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "(RESEPSİYONU ARA)",
                  style: TextStyle(
                      color: Colors.indigo,
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
