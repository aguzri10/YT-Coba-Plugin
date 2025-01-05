import 'package:flutter/material.dart';

class Buttons {
  static ElevatedButtonThemeData elevated(BuildContext context) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        disabledBackgroundColor: Colors.grey,
        disabledForegroundColor: Colors.white,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 0,
        shadowColor: Colors.transparent,
        textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }

  static OutlinedButtonThemeData outlined() {
    return OutlinedButtonThemeData();
  }

  static TextButtonThemeData text() {
    return TextButtonThemeData();
  }
}