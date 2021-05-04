import 'package:flutter/material.dart';

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
            _createDrawerItem(icon: Icons.home_outlined, text: 'Home'),

            // TODO: Get this fixed like a footer
            // Container(
            //   // width: MediaQuery.of(context).size.width * 0.80,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       topRight: Radius.circular(16.0),
            //       topLeft: Radius.circular(16.0),
            //     ),
            //     color: Colors.black,
            //   ),
            //   padding: EdgeInsets.only(
            //     top: 8.0,
            //     left: 8.0,
            //     right: 8.0,
            //     bottom: 32.0,
            //   ),
            //   child: OutlinedButton.icon(
            //     label: Text('Logout'),
            //     icon: Icon(Icons.login_outlined),
            //     onPressed: () => {},
            //     style: OutlinedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(8.0),
            //       ),
            //       side: BorderSide(
            //         width: 2,
            //         color: Colors.white,
            //       ),
            //       primary: Colors.white,
            //       minimumSize: Size(50.0, 50.0),
            //     ),
            //   ),
            // ),
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
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
        color: Colors.black,
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

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    leading: Icon(
      icon,
      size: 32.0,
    ),
    title: Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
      ),
    ),
    onTap: onTap,
  );
}
