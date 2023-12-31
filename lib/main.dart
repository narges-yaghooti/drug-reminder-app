import 'package:flutter/material.dart';
import 'package:medikamente/helpers/colors_helper.dart';
import 'package:medikamente/helpers/theme_helper.dart';
import 'package:medikamente/pages/home_page.dart';
import 'package:medikamente/pages/intro_page.dart';
import 'package:medikamente/pages/main_page.dart';


void main(List<String> args) {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: ThemeHelper.lightTheme,
     ),
   );
}
