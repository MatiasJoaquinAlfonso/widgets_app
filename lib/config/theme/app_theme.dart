import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.deepOrange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0,
        'El color seleccionado tiene que ser mayor a 0'),
      assert(selectedColor <= colorList.length,
        'El color seleccionado tiene que ser igual o menor a ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true, 
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false
    )
  );
}
