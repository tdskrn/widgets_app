import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be great than 0'),
        assert(selectedColor < colorList.length,
            'Selected Color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(centerTitle: true));
  }
//! é a mesma coisa
  // ThemeData getTheme() => ThemeData();
}
