import 'package:countries_app/app/const/app_colors.dart';
import 'package:countries_app/app/views/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:countries_app/app/widget/search_field.dart';
import 'package:countries_app/app/widget/filter_icon.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:countries_app/app/provider/country_provider.dart';

import '../widget/country_widget.dart';
import '../models/countries.dart';
import '../widget/language_tile.dart';
import '../widget/filter_tile.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  late List<CountriesModel>? datar = [];

  @override
  void initState() {
    context.read<CountriesProvider>().getAllCountriesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<DarkThemeProvider>();
    final countriesProvider = context.watch<CountriesProvider>();
    final countryGroups = countriesProvider.countryGroupList;
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
                          provider.setDarkTheme = !provider.isDark;
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
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )),
                          context: context,
                          builder: (context) => LanguageTile(),
                        );
                      },
                      text: 'EN',
                    ),
                    FilterWidget(
                      containerWidth: 86.w,
                      color: data.isDark
                          ? const Color(0xFF000F24)
                          : const Color(0xFFFCFCFD),
                      icon: Icons.filter_alt_outlined,
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )),
                          context: context,
                          builder: (context) => FilterTile(),
                        );
                      },
                      text: 'Filter',
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                countriesProvider.isLoading
                    ? Container(
                        height: 639.h,
                        width: double.maxFinite,
                        color: data.isDark
                            ? const Color(0xFF000F24)
                            : Colors.white,
                        child: SpinKitThreeBounce(
                            duration: const Duration(seconds: 1),
                            itemBuilder: (BuildContext context, index) {
                              return DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: index.isEven
                                        ? Colors.red
                                        : Colors.green),
                              );
                            }),
                      )
                    : SizedBox(
                        height: 600.h,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            for (var entry in countryGroups.entries)
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(entry.key,
                                      style: GoogleFonts.firaSans(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.sp)),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: entry.value.length,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        final countryData = entry.value[index];
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailsScreen(
                                                            name: countryData
                                                                    .name
                                                                    ?.common
                                                                    ?.toString() ??
                                                                '')));
                                          },
                                          child: CountryWidget(
                                            image: countryData.flags?.png
                                                    .toString() ??
                                                '',
                                            countryName: countryData
                                                    .name?.common
                                                    .toString() ??
                                                '',
                                            nameColor: data.isDark
                                                ? AppColor.countryNameDark
                                                : AppColor.countryCapitalLight,
                                            capital: countryData.capital
                                                    ?.toString()
                                                    .replaceAll("[", "")
                                                    .replaceAll("]", "") ??
                                                '',
                                            capitalColor: data.isDark
                                                ? AppColor.countryNameDark
                                                : AppColor.countryCapitalDark,
                                          ),
                                        );
                                      }),
                                ],
                              ),
                          ],
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
