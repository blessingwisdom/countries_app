import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
      scaffoldBackgroundColor: const Color(0xffFFFFFF),
      brightness: Brightness.light,
      primaryColor: Colors.white,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: const Color(0xffFFFFFF),
            brightness: Brightness.light,
          ),
      iconTheme: IconThemeData(
        color: Colors.blue,
      ));

  static final dark = ThemeData(
      scaffoldBackgroundColor: const Color(0xff000F24),
      brightness: Brightness.dark,
      primaryColor: const Color(0xff000F24),
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: const Color(0xff000F24),
            brightness: Brightness.dark,
          ),
      iconTheme: IconThemeData(
        color: Color(0xFFEAECF0),
      ));
}
