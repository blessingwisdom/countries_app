import 'package:countries_app/app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:countries_app/app/provider/country_provider.dart';

class SearchField extends StatefulWidget {
  SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final countryProvider = Provider.of<CountriesProvider>(context);
    return SizedBox(
      height: 60.h,
      child: TextFormField(
        controller: searchController,
        onChanged: ((value) => countryProvider.searchResult(value)),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: AppColor.searchIconColorDark,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.primary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            hintText: 'Search Country',
            hintStyle: GoogleFonts.firaSans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1C1917),
            )),
      ),
    );
  }
}
