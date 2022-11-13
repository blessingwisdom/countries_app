import 'package:countries_app/app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:countries_app/app/provider/country_provider.dart';
import 'package:countries_app/app/provider/theme_provider.dart';

class SearchField extends StatefulWidget {
  SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  DarkThemeProvider themeProvider = DarkThemeProvider();
  final TextEditingController _searchController = TextEditingController();
  late FocusNode focusNode;

  @override
  void dispose() {
    _searchController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _countryProvider =
        Provider.of<CountriesProvider>(context, listen: false);
    return SizedBox(
      height: 48.h,
      width: 380.w,
      child: TextFormField(
        controller: _searchController,
        onChanged: _countryProvider.searchResult,
        keyboardType: TextInputType.text,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: AppColor.searchIconColorDark,
            ),
            filled: true,
            fillColor: themeProvider.isDark
                ? const Color.fromRGBO(152, 162, 179, 0.2)
                : const Color(0xFFF2F4F7),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            hintText: "Search Country",
            hintStyle: GoogleFonts.firaSans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: themeProvider.isDark
                  ? const Color(0xFFEAECF0)
                  : const Color(0xff000000),
            )),
      ),
    );
  }
}
