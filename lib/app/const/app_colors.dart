import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColor {
  static const Color countryNameLight = Color(0xff1C1917);
  static const Color countryCapitalLight = Color(0xff667085);
  static const Color containerBorderColor = Color(0xFFA9B8D4);
  static const Color textFormFieldBgColor = Color(0xFFF2F4F7);
  static const Color searchIconColor = Color(0xff667086);
  static const Color searchIconColorDark = Color(0xff98A2B3);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color containerBgColor = Color(0xFFFCFCFD);
  static const Color containerBoxShadowRgba = Color.fromRGBO(16, 24, 40, 0.05);
}

class Themes {
  static final dark = ThemeData(
      scaffoldBackgroundColor: const Color(0xFF000F24),
      primaryColor: const Color(0xFF000F24),
      brightness: Brightness.dark,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 117, 117, 117))),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blueGrey,
      ),
      iconTheme: const IconThemeData(color: Color(0xFFEAECF0)),
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: const Color(0xFF000F24),
            brightness: Brightness.dark,
          ),
      textTheme: TextTheme(
        button: const TextStyle(color: Colors.grey),
        bodyText1: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFF2F4F7)),
        bodyText2: GoogleFonts.firaSans(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF98A2B3),
        ),
      ));

  static final light = ThemeData(
      scaffoldBackgroundColor: const Color(0xffFFFFFF),
      primaryColor: Colors.white,
      brightness: Brightness.light,
      colorScheme: ThemeData().colorScheme.copyWith(
            secondary: Colors.white,
            brightness: Brightness.light,
          ),
      iconTheme: const IconThemeData(color: Colors.black),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 189, 189, 189))),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.green,
      ),
      textTheme: TextTheme(
        button: const TextStyle(color: Colors.orange),
        bodyText1: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF1C1917),
        ),
        bodyText2: GoogleFonts.firaSans(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF667085),
        ),
      ));
}
