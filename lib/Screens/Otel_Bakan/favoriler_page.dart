import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
            child: Column(
          children: [
            Container(
              child: Center(child: Text('aaaaaaa')),
            ),
          ],
        )),
      ),
    );
  }
}
