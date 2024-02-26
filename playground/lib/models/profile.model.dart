import 'package:flutter/cupertino.dart';

class PersonalData {
  PersonalData({this.avatar, this.name, this.title, this.icons});

  String avatar;
  String name;
  String title;
  List<IconData> icons;
}

class AboutMe {
  AboutMe({this.title, this.body});

  String title;
  String body;
}
