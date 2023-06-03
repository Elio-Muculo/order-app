import 'package:flutter/material.dart';

const primaryColor = Color(0xffc69fa2);
const backgroundColor = Color(0xffdcd7d6);
const secundaryColor = Colors.black;
const errorColor = Colors.red;
const surfaceColor = Colors.white;

const buttomPadding = EdgeInsets.symmetric(vertical: 15, horizontal: 30);

final ThemeData lightTheme = ThemeData.light().copyWith(
  useMaterial3: true,
  cardTheme: CardTheme(
    color: surfaceColor,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: buttomPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: primaryColor,
    secondary: secundaryColor,
    onSecondary: secundaryColor,
    error: errorColor,
    onError: errorColor,
    background: backgroundColor,
    onBackground: backgroundColor,
    surface: surfaceColor,
    onSurface: surfaceColor,
  ),
);
