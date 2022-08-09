import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/favoriler_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Bakan/otel_detail_page.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/feedback_page.dart';
import 'package:meta_ozce_0/Screens/Welcome/welcome_screen.dart';
import 'package:meta_ozce_0/constants.dart';
import 'package:meta_ozce_0/widgets/navigation_bakan1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meta OzCe',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        home: FutureBuilder(
          future: _initialization,
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            if (asyncSnapshot.hasError) {
              return Center(
                child: Text('beklenmeyen hata'),
              );
            } else if (asyncSnapshot.hasData) {
              return NavigationBakan1();
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
