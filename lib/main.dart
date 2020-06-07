import 'package:flutter/material.dart';
import 'package:foodie/Screens/Welcome/welcomeScreen.dart';
import 'package:foodie/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodie',
      theme: ThemeData(
        primaryColor: Colors.white, //Color.fromRGBO(245, 246, 250, 1),
        scaffoldBackgroundColor:
            Colors.white, //Color.fromRGBO(245, 246, 250, 1),
      ),
      home: WelcomeScreen(),
    );
  }
}
