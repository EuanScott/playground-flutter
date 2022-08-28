import 'package:flutter/material.dart';
import 'package:playground/widgets/app_bar.widget.dart';

import 'expandable_card.widget.dart';
import 'meta_data.widget.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Profile',
        isProfilePage: true,
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          SizedBox(height: 8.0),
          ProfileMetaData(),
          ExpandableCard(),
          // TODO: Add more content here. Maybe more CV stuff?
        ],
      ),
    );
  }
}
