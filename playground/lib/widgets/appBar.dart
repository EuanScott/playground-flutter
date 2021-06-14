import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:playground/pages/profile/profile.dart';

import 'package:ionicons/ionicons.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColorPrimary = Colors.teal[400];
  final Color backgroundColorSecondary = Colors.white;
  final Color textColorPrimary = Colors.white;
  final Color textColorSecondary = Colors.teal[400];

  final String title;
  final bool isProfilePage;
  final AppBar appBar;
  final bool showBackButton;

  BaseAppBar(
      {Key key,
      this.title,
      this.isProfilePage = false,
      this.appBar,
      this.showBackButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          if (isProfilePage)
            return IconButton(
              icon: Icon(Ionicons.close_circle_outline),
              iconSize: 28.0,
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          else if (showBackButton)
            return IconButton(
              icon: Icon(Ionicons.chevron_back_outline),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          else
            return IconButton(
              icon: Icon(Ionicons.menu_outline),
              iconSize: 28.0,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
        },
      ),
      title: Text(
        title,
        // TODO: Figure out a way of passing dynamic content into a default theme defined in main.dart
        style: TextStyle(
          color: this.isProfilePage ? textColorSecondary : textColorPrimary,
          fontFamily: 'FiraCode',
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: <Widget>[
        if (!isProfilePage)
          IconButton(
            icon: Icon(
              Ionicons.person,
              color: this.isProfilePage ? textColorSecondary : textColorPrimary,
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
      // Themeing of the TitleBar
      iconTheme: IconThemeData(
        color: this.isProfilePage ? textColorSecondary : textColorPrimary,
      ),
      backgroundColor: this.isProfilePage
          ? backgroundColorSecondary
          : backgroundColorPrimary,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
