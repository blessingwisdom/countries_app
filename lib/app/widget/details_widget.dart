import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailWidget extends StatelessWidget {
  const DetailWidget({
    Key? key,
    required this.population,
    required this.region,
    required this.capital,
    required this.motto,
    required this.officialLang,
    required this.ethnicGroup,
    required this.religion,
    required this.govt,
    required this.independence,
    required this.area,
    required this.currency,
    required this.gdp,
    required this.timeZone,
    required this.dateFormat,
    required this.dialingCode,
    required this.drivingSide,
  }) : super(key: key);
  final String population;
  final String region;
  final String capital;
  final String motto;

  final String officialLang;
  final String ethnicGroup;
  final String religion;
  final String govt;

  final String independence;
  final String area;
  final String currency;
  final String gdp;

  final String timeZone;
  final String dateFormat;
  final String dialingCode;
  final String drivingSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Population: ',
                style: _headingStyle(),
              ),
              Text(
                population,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Region: ',
                style: _headingStyle(),
              ),
              Text(
                region,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Capital: ',
                style: _headingStyle(),
              ),
              Text(
                capital,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Motto: ',
                style: _headingStyle(),
              ),
              Text(
                motto,
                style: _style(),
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Text(
                'Official Language: ',
                style: _headingStyle(),
              ),
              Text(
                officialLang,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Ethnic Group: ',
                style: _headingStyle(),
              ),
              Text(
                ethnicGroup,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Religion: ',
                style: _headingStyle(),
              ),
              Text(
                religion,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Government: ',
                style: _headingStyle(),
              ),
              Text(
                govt,
                style: _style(),
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Text(
                'Independence: ',
                style: _headingStyle(),
              ),
              Text(
                independence,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Area: ',
                style: _headingStyle(),
              ),
              Text(
                area,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Currency: ',
                style: _headingStyle(),
              ),
              Text(
                currency,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'GDP: ',
                style: _headingStyle(),
              ),
              Text(
                gdp,
                style: _style(),
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Text(
                'Time zone: ',
                style: _headingStyle(),
              ),
              Text(
                timeZone,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Date Format: ',
                style: _headingStyle(),
              ),
              Text(
                dateFormat,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Dialing Code: ',
                style: _headingStyle(),
              ),
              Text(
                dialingCode,
                style: _style(),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Driving side: ',
                style: _headingStyle(),
              ),
              Text(
                drivingSide,
                style: _style(),
              )
            ],
          ),
        ],
      ),
    );
  }

  TextStyle _style() =>
      GoogleFonts.firaSans(fontSize: 14.sp, fontWeight: FontWeight.normal);
  TextStyle _headingStyle() =>
      GoogleFonts.firaSans(fontSize: 14.sp, fontWeight: FontWeight.normal);
}
