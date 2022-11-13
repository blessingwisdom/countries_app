import 'package:countries_app/app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:countries_app/app/widget/search_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:countries_app/app/widget/filter_icon.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<DarkThemeProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Consumer<DarkThemeProvider>(
          builder: (BuildContext context, data, child) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 28.h,
                      width: 120.w,
                      child: data.isDark
                          ? Image.asset("assets/images/logo.png",
                              fit: BoxFit.cover)
                          : Image.asset("assets/images/ex_logo.png",
                              fit: BoxFit.cover),
                    ),
                    GestureDetector(
                        onTap: () {
                          _provider.setDarkTheme = !_provider.isDark;
                        },
                        child:
                            Icon(data.isDark ? Icons.dark_mode : Icons.sunny)),
                  ],
                ),
                SizedBox(height: 24.h),
                SearchField(),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterWidget(
                      containerWidth: 73.w,
                      color: data.isDark
                          ? const Color(0xFF000F24)
                          : const Color(0xFFFCFCFD),
                      icon: Icons.language,
                      onTap: () {},
                      text: 'EN',
                    ),
                    FilterWidget(
                      containerWidth: 86.w,
                      color: data.isDark
                          ? const Color(0xFF000F24)
                          : const Color(0xFFFCFCFD),
                      icon: Icons.filter_alt_outlined,
                      onTap: () {},
                      text: 'Filter',
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
