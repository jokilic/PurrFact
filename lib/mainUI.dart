import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'cat.dart';
import 'fact.dart';
import 'variables.dart';

class MainUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Cat('images/maca1.png'),
                    Cat('images/maca2.png'),
                  ],
                ),
                FactUI(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Cat('images/maca3.png'),
                    Cat('images/maca4.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
