import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:playground/models/profile.model.dart';
import 'package:playground/widgets/card.widget.dart';

class ProfileMetaData extends StatelessWidget {
  final _profileData = PersonalData(
    avatar:
        'https://avatars.githubusercontent.com/u/57098959?s=400&u=c515b9d4901797a47326e580797dc8b9ca01172b&v=4',
    name: 'Euan Scott',
    title: 'Software Engineer',
    icons: [
      Ionicons.logo_android,
      Ionicons.phone_portrait_outline,
      Ionicons.logo_apple
    ],
  );

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/loader.gif',
                  image: _profileData.avatar,
                ),
              ),
              radius: 56.0,
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.0,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      _profileData.name,
                      textStyle: Theme.of(context).textTheme.headline6,
                      speed: Duration(milliseconds: 300),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: Duration(milliseconds: 1000),
                ),
                SizedBox(
                  height: 8.0,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      _profileData.title,
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      speed: Duration(milliseconds: 100),
                    ),
                  ],
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 1000),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (var icon in _profileData.icons)
                      Container(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          icon,
                          color: Colors.black54,
                          size: 26.0,
                        ),
                      ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
