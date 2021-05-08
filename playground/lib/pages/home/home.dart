import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:playground/models/home.model.dart';

import 'package:playground/widgets/appBar.dart';
import 'package:playground/widgets/navDrawer.dart';

final List<CardData> _cardData = [
  CardData(
    image: 'https://placeimg.com/640/480/nature',
    title: "Product 1",
    subTitle: "Super fancy things",
    location: "Pretoria",
  ),
  CardData(
    image: 'https://placeimg.com/640/480/sepia',
    title: "Product 2",
    subTitle: "Dull & boring things",
    location: "Cape Town",
  ),
  CardData(
    image: 'https://placeimg.com/640/480/animals',
    title: "Product 3",
    subTitle: "Okay things",
    location: "Durban",
  ),
  CardData(
    image: 'https://placeimg.com/640/480/tech',
    title: "Product 4",
    subTitle: "Interesting things",
    location: "Ermelo",
  ),
  CardData(
    image: 'https://placeimg.com/640/480/poeple',
    title: "Product 5",
    subTitle: "Nothings",
    location: "Port Elizabeth",
  ),
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: BaseAppBar(
        title: 'Page Name',
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          Carousel(),
          ElevatedButton(
            onPressed: () {
              final snackBar = SnackBar(
                content: Text('Yay! A SnackBar!'),
                backgroundColor: Colors.green,
                margin: EdgeInsets.all(8.0),
                behavior: SnackBarBehavior.floating,
                action: SnackBarAction(
                  label: 'Okay',
                  textColor: Colors.white,
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Show SnackBar'),
          ),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  Carousel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: CarouselWidget(),
    );
  }
}

class CarouselWidget extends StatelessWidget {
  CarouselWidget();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        pageSnapping: false,
        enableInfiniteScroll: false,
        height: 380.0,
      ),
      items: _cardData.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CardWidget(item);
          },
        );
      }).toList(),
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardData item;

  const CardWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: FadeInImage.assetNetwork(
              height: 480.0,
              width: 640.0,
              fit: BoxFit.none,
              placeholder: 'assets/loader.gif', //kTransparentImage,
              image: this.item.image,
            ), //Image.network(this.item.image),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10.0),
            width: 350.0,
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      child: Text(
                        this.item.title,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      padding: EdgeInsets.only(bottom: 4.0),
                      width: 300.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        this.item.subTitle,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      padding: EdgeInsets.only(bottom: 8.0),
                      width: 300.0,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.teal,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        this.item.location,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
