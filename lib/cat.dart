import 'package:flutter/material.dart';

class Cat extends StatelessWidget {
  final String catImage;

  Cat(this.catImage);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Image(
        image: AssetImage(catImage),
        width: 60.0,
      ),
    );
  }
}
