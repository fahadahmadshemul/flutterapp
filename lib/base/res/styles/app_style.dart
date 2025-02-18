import 'package:flutter/material.dart';

Color primary = Color(0xFF687daf);

class AppStyle {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle textStyle =
  TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);

  static TextStyle headlineStyleOne =
  TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headlineStyleTwo =
  TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyleThree =
  const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headlineStyleFour =
  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
