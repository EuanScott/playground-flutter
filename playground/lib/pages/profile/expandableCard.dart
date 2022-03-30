import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:playground/widgets/card.dart';

class ExpandableCard extends StatelessWidget {
  final String _title;
  final String _body;

  ExpandableCard(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      ExpansionCard(
        margin: EdgeInsets.zero,
        title: Text(
          _title,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),
        trailing: Icon(
          Ionicons.add_outline,
          color: Colors.teal[400],
        ),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 0,
              right: 16.0,
              bottom: 8.0,
              left: 16.0,
            ),
            child: Text(
              _body,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
