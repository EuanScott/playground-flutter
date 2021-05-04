import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:playground/widgets/appBar.dart';
import 'package:playground/widgets/navDrawer.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: BaseAppBar(
        title: 'Page Name',
        appBar: AppBar(),
      ),
      body: Carousel(),
    );
  }
}

class Carousel extends StatelessWidget {
  Carousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 160.0,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
        ),
        items: [1, 2, 3, 4, 5].map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                child: Card(
                  color: Color(0xFF000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$item',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

// Cupertino
// tabBar: CupertinoTabBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.book_solid),
//             label: 'Articles',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.eye_solid),
//             label: 'Views',
//           ),
//         ],
//       ),
//       tabBuilder: (context, i) {
//         return CupertinoTabView(builder: (context) {
//           return CupertinoPageScaffold(
//             navigationBar: CupertinoNavigationBar(
//               middle: (i == 0) ? Text('Articles') : Text('Views'),
//             ),
//             child: Center(
//               child: Text(
//                 'This is tab $i',
//                 style:
//                     CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
//               ),
//             ),
//           );
//         });
//       },
