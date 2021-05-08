import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:playground/pages/profile/profile.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColorPrimary = Colors.teal[400];
  final Color backgroundColorSecondary = Colors.white;
  final Color textColorPrimary = Colors.white;
  final Color textColorSecondary = Colors.teal[400];

  final String title;
  final bool isModal;
  final AppBar appBar;

  BaseAppBar({Key key, this.title, this.isModal = false, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: this.isModal ? textColorSecondary : textColorPrimary,
        ),
      ),
      leading: Builder(
        builder: (BuildContext context) {
          if (!isModal)
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          else
            return IconButton(
              icon: const Icon(Icons.close_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
        },
      ),
      iconTheme: IconThemeData(
        color: this.isModal ? textColorSecondary : textColorPrimary,
      ),
      actions: <Widget>[
        if (!isModal)
          IconButton(
            icon: Icon(
              Icons.person,
              color: this.isModal ? textColorSecondary : textColorPrimary,
            ),
            onPressed: () {
              showCupertinoModalBottomSheet(
                  expand: false,
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (context) => Profile());
            },
          )
      ],
      backgroundColor:
          this.isModal ? backgroundColorSecondary : backgroundColorPrimary,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
