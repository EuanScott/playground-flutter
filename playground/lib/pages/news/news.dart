import 'package:flutter/material.dart';

import 'package:playground/pages/news/news-details.dart';

import 'package:playground/widgets/appBar.dart';
import 'package:playground/widgets/navDrawer.dart';

import 'package:playground/models/news.model.dart';

void main() => runApp(HeroPage());

final news = List.generate(
  20,
  (i) => News(
    'https://placeimg.com/640/480/any',
    'A description of what needs to be done for Todo $i',
    'Page No. $i',
  ),
);

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: BaseAppBar(
          title: 'Hero Page',
          appBar: AppBar(),
        ),
        body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.only(
                top: 8.0,
                right: 16.0,
                bottom: 8.0,
                left: 16.0,
              ),
              leading: Hero(
                tag: 'hero$index',
                child: _heroImage(const Size(75, 75), news[index].image),
              ),
              onTap: () => ({
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsDetailsPage(
                      news: news[index],
                    ),
                  ),
                )
              }),
              title: Text(
                news[index].header,
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _heroImage(Size size, String image) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
