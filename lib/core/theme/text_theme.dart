// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppTextThemes {
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 12.0,
      fontWeight: FontWeight.w700,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
  );
// 2
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
    ),
    displayLarge: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: const TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Cairo-VariableFont_slnt,wght',
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
  );
}
