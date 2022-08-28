import 'package:flutter/material.dart';

class Theming {
  static ThemeData themeData = ThemeData(
    fontFamily: 'Nunito',
    primaryColor: Color(0xFF00c7f5),
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    textTheme: TextTheme(
      // How to set custom fonts: https://stackoverflow.com/a/54376335
      headline1: TextStyle(
        color: Colors.black,
        fontFamily: 'Nunito',
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
      headline6: TextStyle(
        color: Colors.black,
        fontFamily: 'Nunito',
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
      ),
      subtitle1: TextStyle(
        color: Colors.grey,
        fontFamily: 'Nunito',
        fontSize: 16.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: TextStyle(
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
  );
}
