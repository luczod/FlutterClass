import 'package:flutter/material.dart';

AppBar headerHome = AppBar(
  title: const Center(
    child: Text(
      'BMI CALCULATOR',
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20.0,
      ),
    ),
  ),
  elevation: 4,
  shadowColor: Colors.black,
  // backgroundColor: Colors.blueAccent,
);

AppBar headerResult = AppBar(
  title: const Text(
    'BMI CALCULATOR',
    style: TextStyle(
      fontFamily: 'Roboto',
      fontSize: 20.0,
    ),
  ),
  elevation: 4,
  shadowColor: Colors.black,
  // backgroundColor: Colors.blueAccent,
);
