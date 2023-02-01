import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLightColor = Color(0xff39A552);
  static Color whiteColor = Color(0xffffffff);
  static Color blackColor = Color(0xff303030);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
        appBarTheme: AppBarTheme(
      elevation: 0,
          backgroundColor: primaryLightColor,
  ),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: whiteColor,
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
          color: blackColor,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),
    )
  );
}