import 'package:flutter/material.dart';

const Color mainColor = Color(0xFF55B9F3);
const Color darkShadow = Color(0xFF489DCF);
const Color lightShadow = Color(0xFF62D5FF);

const BoxDecoration neumorphicShadow = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: darkShadow,
      blurRadius: 60.0,
      offset: Offset(20, 20),
    ),
    BoxShadow(
      color: lightShadow,
      blurRadius: 60.0,
      offset: Offset(-20, -20),
    )
  ],
);
