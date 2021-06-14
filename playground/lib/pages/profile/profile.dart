import 'package:flutter/material.dart';

import 'package:playground/widgets/appBar.dart';
import 'package:playground/widgets/navDrawer.dart';

import 'metaData.dart';
import 'expandableCard.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: BaseAppBar(
        title: 'Profile',
        isProfilePage: true,
        appBar: AppBar(),
      ),
      body: Column(
        children: <Widget>[
          ProfileData(),
          ExpandableCard(
            'About me',
            'I am a classically trained Musician, which has over the years given me the confidence and tenacity to work through challengesto achieve my goals. I am also a keen gamer and have recently taken up woodwork.',
          ),
        ],
      ),
    );
  }
}
