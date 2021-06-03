import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:playground/models/profile.model.dart';

import 'package:playground/widgets/card.dart';

class ProfileData extends StatelessWidget {
  final _profileData = PersonalData(
    avatar:
        'https://avatars.githubusercontent.com/u/57098959?s=400&u=c515b9d4901797a47326e580797dc8b9ca01172b&v=4',
    name: 'Euan Scott',
    title: 'Full-Stack Mobile Engineer',
    icons: ['assets/ionic.svg', 'assets/angular.svg', 'assets/nodejs.svg'],
  );

  ProfileData();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                this._profileData.avatar,
              ),
              radius: 64.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Text(
                    this._profileData.name,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Text(
                    this._profileData.title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Ionicons.logo_ionic,
                          color: Colors.black54,
                          size: 26.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Ionicons.logo_angular,
                          color: Colors.black54,
                          size: 26.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Ionicons.logo_nodejs,
                          color: Colors.black54,
                          size: 26.0,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
