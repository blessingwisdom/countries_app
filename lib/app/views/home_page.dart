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
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Consumer<DarkThemeProvider>(builder: (context, theme, child) {
                  return InkWell(
                    child: const Icon(Icons.wb_sunny_outlined),
                  );
                }),
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
                  color: AppColor.whiteColor,
                  icon: Icons.language,
                  onTap: () {},
                  text: 'EN',
                ),
                FilterWidget(
                  containerWidth: 86.w,
                  color: AppColor.containerBgColor,
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
    ));
  }
}
