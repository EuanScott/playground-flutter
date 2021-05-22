import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:expansion_card/expansion_card.dart';
import 'package:playground/widgets/card.dart';

class ExpandableCard extends StatelessWidget {
  final String title;
  final String body;

  ExpandableCard(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      ExpansionCard(
        margin: EdgeInsets.zero,
        title: Text(
          this.title,
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
            padding: EdgeInsets.all(16.0),
            child: Text(
              this.body,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
