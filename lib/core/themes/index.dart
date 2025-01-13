import 'package:flutter/material.dart';
import 'package:yt_coba_plugin/core/constants/font_family.dart';
import 'package:yt_coba_plugin/core/themes/buttons.dart';
import 'package:yt_coba_plugin/core/themes/colors.dart';

class MyThemes {
  static ThemeData data(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.purple,
      colorScheme: MyColors.scheme(),
      appBarTheme: appBar(),
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: Buttons.elevated(context),
      outlinedButtonTheme: Buttons.outlined(),
      textButtonTheme: Buttons.text(),
      fontFamily: MyFonts.poppins,
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black87),
        bodySmall: TextStyle(color: Colors.black87),
      ),
    );
  }

  static AppBarTheme appBar() {
    return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
}
