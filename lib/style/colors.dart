import 'package:flutter/material.dart';

class MyColor {
  static Color backColor = Colors.grey.shade100;
  static Color mainColor = Colors.grey;
  static Color textColor = Colors.black;
  static Color iconColor = Colors.black;
  static Color lineColor = Colors.grey.shade300;
  static Color iconBack = Colors.grey.shade300;

  static Color activeColor = Colors.grey.shade50;
  static Color neActiveColor = Colors.grey.shade300;
  static const Color lightBlue = Color(0xFFF5F7FB);

  static MaterialColor newBlack = const MaterialColor(0xFF121212, <int, Color>{
    50: Color(0xFF444444),
    100: Color(0xFF3F3F3F),
    200: Color(0xFF343434),
    300: Color(0xFF2A2A2A),
    400: Color(0xFF1C1C1C),
    500: Color(0xFF121212),
    600: Color(0xFF111111),
    700: Color(0xFF101010),
    800: Color(0xFF0C0C0C),
    900: Color(0xFF000000),
  });
}
