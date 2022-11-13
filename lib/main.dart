import 'package:countries_app/app/const/themes.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:countries_app/app/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:countries_app/app/provider/country_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(
          428.0,
          926.0,
        ),
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<CountriesProvider>(
                  create: (context) => CountriesProvider()),
              ChangeNotifierProvider<DarkThemeProvider>(
                  create: (_) => themeChangeProvider),
            ],
            child: Consumer<DarkThemeProvider>(
                builder: (context, themeProvider, child) {
              return MaterialApp(
                builder: (context, widget) {
                  return MediaQuery(
                      data:
                          MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                      child: widget!);
                },
                theme: Themes.light,
                darkTheme: Themes.dark,
                debugShowCheckedModeBanner: false,
                themeMode:
                    themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
                home: const CountryScreen(),
              );
            }),
          );
        });
  }
}
