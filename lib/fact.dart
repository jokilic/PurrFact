import 'package:flutter/material.dart';

import 'getData.dart';
import 'variables.dart';

DataGetter dataGetter = DataGetter();

class FactUI extends StatefulWidget {
  @override
  _FactUIState createState() => _FactUIState();
}

class _FactUIState extends State<FactUI> {
  void initState() async {
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
