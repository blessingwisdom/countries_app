import 'package:countries_app/app/const/app_colors.dart';
import 'package:countries_app/app/views/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:countries_app/app/widget/search_field.dart';
import 'package:countries_app/app/widget/filter_icon.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:countries_app/app/provider/country_provider.dart';

import '../widget/country_widget.dart';
import '../models/countries.dart';

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
    final provider = Provider.of<DarkThemeProvider>(context, listen: false);
    final countriesProvider = context.watch<CountriesProvider>();
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
                    : Container(
                        height: 639.h,
                        width: double.maxFinite,
                        child: Consumer<CountriesProvider>(builder:
                            (BuildContext context, countriesData, child) {
                          return ListView.builder(
                              itemCount: countriesData.countryData.length,
                              itemBuilder: (BuildContext context, index) {
                                print(datar!.length);
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailsScreen(
                                                name: countriesData
                                                    .countryData![index]
                                                    .name
                                                    .common
                                                    .toString())));
                                  },
                                  child: CountryWidget(
                                    image: countriesData
                                        .countryData[index].flags.png
                                        .toString(),
                                    countryName: countriesData
                                        .countryData[index].name.common
                                        .toString(),
                                    nameColor: data.isDark
                                        ? AppColor.countryNameDark
                                        : AppColor.countryCapitalLight,
                                    capital: countriesData
                                        .countryData[index].capital
                                        .toString()
                                        .replaceAll("[", "")
                                        .replaceAll("]", ""),
                                    capitalColor: data.isDark
                                        ? AppColor.countryNameDark
                                        : AppColor.countryCapitalDark,
                                  ),
                                );
                              });
                        })),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
