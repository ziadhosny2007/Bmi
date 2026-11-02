import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffF8F9FA),
    secondaryHeaderColor: const Color(0xffFFFFFF),
    focusColor: const Color(0xffFFFFFF),
    highlightColor: const Color(0xff3D81E8),

    iconTheme: const IconThemeData(color: Color(0xff8B8C9E)),

    primaryTextTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 64,
        color: Color(0xff2D3436),
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Color(0xff2D3436),
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Color(0xff6C757D),
      ),
    ),

    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xffFFFFFF),
      centerTitle: true,

      iconTheme: IconThemeData(color: Color(0xff6C757D)),

      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xff2D3436),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xff1C2135),
    secondaryHeaderColor: const Color(0xff24263B),
    focusColor: const Color(0xff333244),
    highlightColor: const Color(0xffffffff),

    iconTheme: const IconThemeData(color: Colors.white),

    primaryTextTheme: const TextTheme(
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 64,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Color(0xff8B8C9E),
      ),
    ),

    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Color(0xff24263B),
      centerTitle: true,

      iconTheme: IconThemeData(color: Colors.white),

      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}
