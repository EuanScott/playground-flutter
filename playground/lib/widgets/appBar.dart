import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.white;
  final Color textColor = Colors.black;
  final String title;
  final AppBar appBar;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.title, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
      iconTheme: IconThemeData(color: textColor),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.person, color: textColor),
          onPressed: () {
            // do something
            print('Open a new profile page');
          },
        )
      ],
      backgroundColor: backgroundColor,
      // flutterdrawer: NavDrawer()
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
