import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:playground/widgets/card.widget.dart';

import '../../models/profile.model.dart';

class ExpandableCard extends StatelessWidget {
  final _aboutMe = AboutMe(
    title: 'About me',
    body:
        'I am a classically trained Musician, which has over the years given me the confidence and tenacity to work through challenges to achieve my goals. I am also a keen gamer and have recently taken up woodwork.',
  );

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: ExpansionCard(
        margin: EdgeInsets.zero,
        title: Text(
          _aboutMe.title,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.black,
          ),
        ),
        trailing: Icon(
          Ionicons.add_outline,
          color: Colors.teal[400],
        ),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
            child: Text(
              _aboutMe.body,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
