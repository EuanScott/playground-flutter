import 'package:flutter/material.dart';
import 'package:playground/pages/profile/profile.dart';

import 'pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF00c7f5),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontSize: 16.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          bodyText1: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
