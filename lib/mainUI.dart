import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'variables.dart';
import 'getData.dart';

DataGetter dataGetter = DataGetter();

class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image(
                      image: AssetImage('images/maca1.png'),
                      width: 60.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image(
                      image: AssetImage('images/maca2.png'),
                      width: 60.0,
                    ),
                  ),
                ],
              ),
              Column(
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
                          onPressed: () => dataGetter.getData(),
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image(
                      image: AssetImage('images/maca3.png'),
                      width: 60.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Image(
                      image: AssetImage('images/maca4.png'),
                      width: 60.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
