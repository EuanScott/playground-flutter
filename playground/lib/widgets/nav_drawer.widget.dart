import 'package:flutter/material.dart';

import 'package:playground/pages/home/home.page.dart';
import 'package:playground/pages/news/news.page.dart';
import 'package:playground/pages/settings/settings.page.dart';

import 'package:ionicons/ionicons.dart';

///TODO: Update the Side Menu to use a loop, rather than have everything hardcoded
// final List<NavData> _drawerItem = [
//   NavData(
//     icon: Ionicons.home_outline,
//     title: "Home",
//   ),
//   NavData(
//     icon: Ionicons.newspaper_outline,
//     title: 'News',
//   )
// ];

// TODO: Sort out navigation in my app
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
                  MaterialPageRoute(builder: (context) => NewsPage()),
                )
              },
            ),
            DrawerItem(
              Ionicons.settings_outline,
              'Settings',
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
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
        style: Theme.of(context).textTheme.headline6,
      ),
      onTap: this.onTap,
    );
  }
}
