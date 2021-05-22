import 'package:flutter/material.dart';

import 'package:playground/pages/home/home.dart';
import 'package:playground/pages/news/news.dart';

import 'package:ionicons/ionicons.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createHeader(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  topLeft: Radius.circular(16.0),
                ),
                color: Colors.blue,
              ),
            ),
            DrawerItem(
              Ionicons.home_outline,
              'Home',
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                )
              },
            ),
            DrawerItem(
              Ionicons.newspaper_outline,
              'News',
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HeroPage()),
                )
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createHeader() {
  return Container(
    child: DrawerHeader(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
        color: Colors.teal[400],
      ),
      child: Container(
        padding: EdgeInsets.only(top: 16.0),
        alignment: Alignment.topCenter,
        child: Text(
          'Side Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    ),
  );
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final dynamic onTap;

  DrawerItem(this.icon, this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        this.icon,
        size: 28.0,
        color: Colors.teal[400],
      ),
      title: Text(
        this.title,
        style: Theme.of(context).textTheme.headline1,
      ),
      onTap: this.onTap,
    );
  }
}
