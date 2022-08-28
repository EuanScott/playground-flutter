import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'package:playground/pages/news/news_details.page.dart';

import 'package:playground/widgets/app_bar.widget.dart';
import 'package:playground/widgets/card.widget.dart';
import 'package:playground/widgets/nav_drawer.widget.dart';

import 'package:playground/models/news.model.dart';

void main() => runApp(NewsPage());

final List<News> news = [
  News(
    image: 'assets/background.jpg',
    header: 'A description of what needs to be done for Todo 1',
    pageName: 'Page No. 0',
    index: 0,
  ),
  News(
    image: 'assets/stars.gif',
    header: 'A description of what needs to be done for Todo 1',
    pageName: 'Page No. 1',
    index: 1,
  ),
  News(
    image: 'assets/loader.gif',
    header: 'A description of what needs to be done for Todo 1',
    pageName: 'Page No. 2',
    index: 2,
  ),
];

/// TODO: Implement Future Builder
/// https://github.com/entelect/incubator_flutter

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: BaseAppBar(
          title: 'News',
          appBar: AppBar(),
          showBackButton: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: news.map((item) {
            return GestureDetector(
              onTap: () => ({
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        NewsDetailsPage(news: news[item.index]),
                  ),
                )
              }),
              child: Row(
                children: [
                  CustomCard(
                    child: Hero(
                      child: _customImage(
                        const Size(125, 125),
                        item.image,
                      ),
                      tag: 'hero-${item.index}',
                    ),
                  ),
                  Container(
                    child: new Column(
                      children: <Widget>[
                        Text(
                          lorem(paragraphs: 1, words: 15),
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(16.0),
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _customImage(Size size, String image) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
