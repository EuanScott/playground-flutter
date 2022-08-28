import 'package:flutter/material.dart';
import 'package:playground/widgets/app_bar.widget.dart';

import '../../widgets/card.widget.dart';

final List<String> _todoList = [
  // https://medium.com/flutterdevs/checkbox-listtile-in-flutter-50e877cee48c
  "Set up the text theming properly",
  "Have some way of changing the theme (dark vs light)",
  "Have some way of setting the theme colours (teal vs purple vs orange)",
  "Have some way of settings the default font (Nunito vs FiraCode)",
  "Have some way of setting the default font size (12.0 vs 14.0 vs 16.0)",
  'Set up localization',
];

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Settings',
        appBar: AppBar(),
        showBackButton: true,
      ),
      body: new ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (BuildContext context, int index) {
          String key = _todoList.elementAt(index);
          return new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomCard(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Text(
                    key,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                // subtitle: new Text("something else"),
              ),
            ],
          );
        },
      ),
    );
  }
}
