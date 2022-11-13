import 'package:countries_app/app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final String text;
  final IconData? icon;
  final double containerWidth;
  FilterWidget({
    Key? key,
    required this.containerWidth,
    required this.color,
    required this.icon,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  DarkThemeProvider themeProvider = DarkThemeProvider();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            height: 40.h,
            width: containerWidth,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(
                width: 0.2,
                color: themeProvider.isDark
                    ? const Color(0xFFA9B8D5)
                    : const Color(0xFFA9B8D5),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon, size: 25),
                  Text(
                    text,
                    style: GoogleFonts.firaSans(fontSize: 14.sp),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
