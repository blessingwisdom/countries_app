import 'package:countries_app/app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.h,
      child: TextFormField(
        controller: searchController,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.search,
              color: AppColor.searchIconColor,
            ),
            filled: true,
            fillColor: data.isDark
                ? const Color.fromRGBO(152, 162, 179, 0.2)
                : const Color(0xFFF2F4F7),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide:
                  const BorderSide(color: AppColor.textFormFieldBgColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide:
                  const BorderSide(color: AppColor.textFormFieldBgColor),
            ),
            hintText: 'Search Country',
            hintStyle: GoogleFonts.firaSans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}
