import 'package:flutter/material.dart';

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
      ),
      initialRoute: '/',
      routes: {'/': (context) => Home()},
    );
  }
}
