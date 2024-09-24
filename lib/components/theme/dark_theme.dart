import 'package:capten/components/constants/app_them.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: "Cairo",
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppThem.black,
  appBarTheme:
      const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
  colorScheme: ColorScheme.dark(
      background: const Color.fromARGB(255, 39, 37, 37),
      primary: AppThem.primaryColorDark,
      secondary: AppThem.secondaryColor,
      shadow: AppThem.white),
);
