import 'package:flutter/material.dart';

class MyColors {
  static Color primary = Colors.purple;
  static Color secondary = Colors.purpleAccent;

  static ColorScheme scheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: secondary,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    );
  }
}
