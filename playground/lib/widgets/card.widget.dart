import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({this.child});

  final Widget child;

  // int _theProperty;
  // int get theProperty => _theProperty;
  // void set theProperty(int value) {
  //   assert(value != null);
  //   if (_theProperty == value) return;
  //   _theProperty = value;
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: child,
    );
  }
}
