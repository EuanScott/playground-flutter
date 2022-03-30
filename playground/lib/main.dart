import 'package:flutter/material.dart';
import 'package:playground/pages/news/news.dart';
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
      // .light().copyWith
      theme: ThemeData(
        fontFamily: 'Nunito',
        primaryColor: Color(0xFF00c7f5),
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        textTheme: TextTheme(
          // How to set custom fonts: https://stackoverflow.com/a/54376335
          // headline1: TextStyle(
          //   color: Colors.black,
          //   fontFamily: 'Nunito',
          //   fontSize: 20.0,
          //   fontWeight: FontWeight.w600,
          // ),
          headline6: TextStyle(
            color: Colors.black,
            fontFamily: 'Nunito',
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
          subtitle1: TextStyle(
            color: Colors.grey,
            fontFamily: 'Nunito',
            fontSize: 12.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
            color: Colors.black,
            fontFamily: 'Nunito',
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            color: Colors.black,
            fontFamily: 'Nunito',
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
        '/news': (context) => NewsPage(),
      },
    );
  }
}
