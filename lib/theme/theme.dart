import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
    primaryColor: Colors.white,
    primaryColorDark: Colors.white70,
    accentColor: Colors.white,
    errorColor: Colors.red,
    backgroundColor: Colors.grey[50],
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[50],
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.white,
      primaryVariant: Colors.white70,
      onPrimary: Colors.black,
      background: Colors.grey[50],
      error: Colors.red,
      onBackground: Colors.white60,
    ));

ThemeData get darkTheme => ThemeData(
    primaryColor: Colors.black38,
    primaryColorDark: Colors.black87,
    accentColor: Colors.black38,
    errorColor: Colors.red[300],
    backgroundColor: Colors.black45,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black45,
    colorScheme: const ColorScheme.dark().copyWith(
        primary: Colors.black38,
        primaryVariant: Colors.black87,
        onPrimary: Colors.white,
        background: Colors.black45,
        error: Colors.red[300],
        onBackground: Colors.grey[800]));
