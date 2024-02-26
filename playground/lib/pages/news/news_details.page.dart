import 'package:flutter/material.dart';

import 'package:flutter_lorem/flutter_lorem.dart';

import 'package:playground/widgets/app_bar.widget.dart';
import 'package:playground/widgets/nav_drawer.widget.dart';

import 'package:playground/models/news.model.dart';

void main() => runApp(NewsDetailsPage());

class NewsDetailsPage extends StatelessWidget {
  final News news;

  NewsDetailsPage({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int index = news.index;

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
                  tag: 'hero-$index',
                  child:
                      _customImage(const Size(400, 400), context, news.image),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    right: 16.0,
                    left: 16.0,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(height: 50.0),
                            Container(
                              padding: EdgeInsets.only(top: 12.0),
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Header',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                            Positioned(
                              right: 8,
                              child: ElevatedButton.icon(
                                icon: Icon(Icons.close_outlined),
                                label: Text("Close"),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF227e8d), // background
                                  onPrimary: Colors.white, // foreground
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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

  Widget _customImage(Size size, BuildContext context, String image) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
