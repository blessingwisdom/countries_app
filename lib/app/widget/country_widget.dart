import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CountryWidget extends StatelessWidget {
  const CountryWidget(
      {Key? key,
      required this.countryName,
      required this.capital,
      required this.capitalColor,
      required this.nameColor,
      required this.image})
      : super(key: key);
  final String countryName;
  final String capital;
  final Color nameColor;
  final Color capitalColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20.h),
        height: 45.h,
        width: 200.w,
        child: Row(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(countryName,
                    style: GoogleFonts.firaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: nameColor,
                    )),
                Text(capital,
                    style: GoogleFonts.firaSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: capitalColor,
                    )),
              ],
            )
          ],
        ));
  }
}
