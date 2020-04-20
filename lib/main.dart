import 'package:flutter/material.dart';
import 'mainUI.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'Random Cat Facts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Product Sans'),
      home: MainUI(),
    ),
  );
}
