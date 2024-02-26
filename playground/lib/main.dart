import 'package:flutter/material.dart';
import 'package:playground/pages/news/news.page.dart';
import 'package:playground/pages/profile/profile.page.dart';
import 'package:playground/theme.dart';

import 'pages/home/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // .light().copyWith
      theme: Theming.themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/profile': (context) => Profile(),
        '/news': (context) => NewsPage(),
      },
    );
  }
}
