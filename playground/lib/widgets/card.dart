import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget temp;

  CustomCard(this.temp);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        right: 16.0,
        bottom: 8.0,
        left: 16.0,
      ),
      child: Card(
        elevation: 8.0,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: this.temp,
      ),
    );
  }
}
