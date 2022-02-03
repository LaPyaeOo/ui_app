import 'package:flutter/material.dart';
import '../utils/dimension.dart';

class UIappTheme {
  static TextTheme textTheme = TextTheme(
      bodyText1: TextStyle(
        fontSize: TEXT_REGULAR,
        fontWeight: FontWeight.w700,
        fontFamily: "EncodeSansSemiCondensed",
        color: Colors.black,
      ),
      headline1: TextStyle(
        fontSize: TEXT_BIG,
        fontWeight: FontWeight.bold,
        fontFamily: "EncodeSansSemiCondensed",
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: TEXT_REGULAR_3X,
        fontWeight: FontWeight.w700,
        fontFamily: "EncodeSansSemiCondensed",
        color: Colors.black,
      ),
      headline3: TextStyle(
        fontSize: TEXT_REGULAR,
        fontWeight: FontWeight.w600,
        fontFamily: "EncodeSansSemiCondensed",
        color: Colors.black,
      ),
      headline6: TextStyle(
        fontSize: TEXT_REGULAR_3X,
        fontWeight: FontWeight.w600,
        fontFamily: "EncodeSansSemiCondensed",
        color: Colors.black,
      ));

  static ThemeData themeData() {
    return ThemeData(
      textTheme: textTheme,
    );
  }
}
