import 'package:flutter/material.dart';

import 'package:flutter_lorem/flutter_lorem.dart';

import 'package:playground/widgets/appBar.dart';
import 'package:playground/widgets/navDrawer.dart';

import 'package:playground/models/news.model.dart';

void main() => runApp(NewsDetailsPage());

class NewsDetailsPage extends StatelessWidget {
  final News news;

  NewsDetailsPage({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: BaseAppBar(
          title: this.news.pageName,
          appBar: AppBar(),
          showBackButton: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: 'hero-rectangle',
                  child: _blueRectangle(const Size(400, 400), context),
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    lorem(paragraphs: 6, words: 400),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _blueRectangle(Size size, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(this.news.image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
