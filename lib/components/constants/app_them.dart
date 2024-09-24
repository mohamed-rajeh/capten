// Define your custom color palette
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppThem {
  AppThem._();
// Define your custom color palette

  static Color primaryColor = Color(0xFF2C4E80); // Blue
  static Color secondaryColor = Color(0xFFFBA834); // Orange
  static Color primaryColorDark = Color.fromARGB(255, 108, 140, 188); // Blue

  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color grey = Colors.grey;
  static Color green = Color(0xff36AE7C);
  static Color red = Colors.red;

// **Here are some suggestions on how to use these colors in your Flutter app:**

// - **PrimaryColor (CBE4DE):** Use it for primary elements like app bars, buttons, and important text. It provides a calm and neutral base for your app's UI.
// - **SecondaryColor (0E8388):** Use it to highlight specific elements or sections, such as headlines, links, or interactive components. It adds a touch of vibrancy and visual interest.
// - **TertiaryColor (2E4F4F):** Use it as a background color for screens or containers to create a subtle contrast and depth. It sets a refined and elegant tone.
// - **AccentColor (2C3333):** Use it for text and icons to ensure readability and visual clarity. It complements the other colors while maintaining a clean and professional look.

// *|*Remember to adjust the colors and their usage based on your app's specific design and branding requirements.**

// Create a ThemeData object using colorScheme
  static ThemeData lightThem = ThemeData.light().copyWith();

//Normal text style
  static TextStyle nfontStyle =
      const TextStyle(fontSize: 14, color: Colors.white);
//title text style
  static TextStyle tfontStyle =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
}


/*
class AppColors {
  // Light theme colors (already defined)
  final Color primary = Color(0xFFFBA834); // Orange
  final Color secondary = Color(0xFF387ADF); // Blue

  // Dark theme colors
  final Color primaryDark = Color(0xFFC07A2D); // Darker orange
  final Color secondaryDark = Color(0xFF295BAE); // Darker blue
  final Color surfaceDark = Color(0xFF121212); // Dark background
  final Color onSurfaceDark = Color(0xFFFFFFFF); // White text for dark background
  final Color onPrimaryDark = Color(0xFFFFFFFF); // White text for primaryDark

  // Neutrals for both light and dark themes
  final Color white = Colors.white;
  final Color black = Colors.black;
  final Color grey = Colors.grey;

  // Helper method to switch between light and dark themes
  Color get accent => isDarkMode ? primaryDark : primary; // Adjust based on your dark mode logic

  // Add a constructor if needed to handle theme switching logic
}

*/ 