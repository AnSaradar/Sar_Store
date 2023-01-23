import 'package:flutter/material.dart';

ThemeData themeData(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Aviner',
    textTheme: textTheme()
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    )
  );
}