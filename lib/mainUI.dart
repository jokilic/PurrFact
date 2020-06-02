import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'getData.dart';
import 'cat.dart';
import 'fact.dart';
import 'variables.dart';

class MainUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
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
    );
  }
}

class FactUI extends StatefulWidget {
  @override
  _FactUIState createState() => _FactUIState();
}

class _FactUIState extends State<FactUI> {
  void initState() {
    dataGetter.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(36.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                fact,
                style: TextStyle(
                  fontSize: 20.0,
                  color: mainColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: neumorphicShadow,
            child: Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                color: mainColor,
                padding: EdgeInsets.all(28.0),
                onPressed: () {
                  setState(() {
                    dataGetter.randomFunFact();
                  });
                },
                child: Text(
                  'CAT FACT',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
