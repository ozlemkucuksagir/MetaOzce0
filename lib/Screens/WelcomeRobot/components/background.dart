import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          // children: <Widget>[
          //   Positioned(
          //     top: 0,
          //     left: 0,
          //     child: Image.asset("assets/images/kategori/tatlı.png"),
          //     width: size.width * 0.3,
          //   ),
          //   Positioned(
          //     bottom: 0,
          //     left: 0,
          //     child: Image.asset("assets/images/kategori/tatlı.png"),
          //     width: size.width * 0.3,
          //   ),
          //
          // ],
        ));
  }
}
