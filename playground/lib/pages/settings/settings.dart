import 'package:flutter/material.dart';

import 'package:playground/widgets/appBar.dart';
import 'package:playground/widgets/navDrawer.dart';

final List<String> _todoList = [
  // https://medium.com/flutterdevs/checkbox-listtile-in-flutter-50e877cee48c
  "[todo] Convert this to a checkbox",
  "[todo] Set up the text theming properly",
  "[todo] Have some way of changing the theme (dark vs llight)",
  "[todo] Have some way of setting the theme colours (teal vs purple vs orange)",
  "[todo] Have some way of settings the default font (Nunito vs FiraCode)",
  "[todo] Have some way of setting the default font size (12.0 vs 14.0 vs 16.0)",
];

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: BaseAppBar(
        title: 'Settings',
        appBar: AppBar(),
      ),
      // moviesTitles.map((title) => Tab(text: title)).toList()
      // body: _todoList.map((item) => {
      //       Text(item.title)
      //   }).toList(),

      body: new ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (BuildContext context, int index) {
          String key = _todoList.elementAt(index);
          return new Column(
            children: <Widget>[
              new ListTile(
                title: new Text(key),
                // subtitle: new Text("something else"),
              ),
              new Divider(
                height: 2.0,
              ),
            ],
          );
        },
      ),
    );
  }
}
