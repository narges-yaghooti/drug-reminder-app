import 'package:flutter/material.dart';
import 'package:medikamente/helpers/colors_helper.dart';

class ThemeHelper {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorsHelper.primaryGreen,
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: ColorsHelper.primaryGreen,
    ),
    
  );
}
