import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:countries_app/app/widget/details_widget.dart';
import 'package:provider/provider.dart';
import 'package:countries_app/app/provider/theme_provider.dart';
import 'package:countries_app/app/provider/country_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:card_swiper/card_swiper.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    final countiesrover = context.read<CountriesProvider>();
    countiesrover.getAllCountryByName(widget.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 24.w, right: 24.w, top: 24.h),
        child: Consumer<DarkThemeProvider>(
            builder: (BuildContext context, data, child) {
          return Consumer<CountriesProvider>(
              builder: (BuildContext context, countriesDataByName, child) {
             final country =  (countriesDataByName.countryByNameList?.length ?? 0) > 0 
                            ? countriesDataByName
                                .countryByNameList![0] :  null;

            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 33.h,
                  width: 214.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back),
                      ),
                      Text(
                        (countriesDataByName.countryByNameList?.length ?? 0) > 0 
                            ? countriesDataByName
                                .countryByNameList![0].name?.common
                                .toString() ?? ''
                            : "no data",
                        style: GoogleFonts.firaSans(fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.h,
                  width: double.maxFinite,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(
                                  (countriesDataByName.countryByNameList?.length ?? 0 ) >
                                          0
                                      ? countriesDataByName
                                          .countryByNameList![0].flags?.png
                                          .toString() ?? ''
                                      : "no data",
                                ),
                                fit: BoxFit.cover)),
                      );
                    },
                    autoplay: false,
                    itemCount: 3,
                    pagination: const SwiperPagination(
                        alignment: Alignment.bottomCenter,
                        builder: DotSwiperPaginationBuilder(
                            color: Colors.white,
                            activeColor: Colors.blue,
                            size: 5,
                            activeSize: 5)),
                    control: SwiperControl(
                        iconPrevious: Icons.arrow_back_ios,
                        iconNext: Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 20,
                        padding: EdgeInsets.symmetric(horizontal: 20.w)),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                DetailWidget(
                  population: country?.population
                          .toString() ??
                      'no data',
                  region: country?.region
                          .toString()
                      ?? 'no data',
                  capital: country?.capital
                          .toString()
                          .replaceAll("[", "")
                          .replaceAll("]", "")
                      ?? "no data",
                  motto: "motto",
                  officialLang: country?.languages?.ara
                      ?? "no data",
                  ethnicGroup: "ethnicGroup",
                  religion: "religion",
                  govt: "govt",
                  independence: country?.independent
                          .toString()
                      ?? "no data",
                  area: "${country?.area}km2"
                     ,
                  currency: country?.currencies?.mRU?.name
                      ?? 'no data',
                  gdp: 'gdp',
                  timeZone: country?.timezones?[0]
                          .toString()
                      ?? "no data",
                  dateFormat: 'dateFormat',
                  dialingCode: country?.idd?.root
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "") ?? '${country?.idd?.suffixes?[0]
                              .toString()
                              .replaceAll("[", "")
                              .replaceAll("]", "")}' ,
                  drivingSide: country?.car?.side
                          .toString()
                      ?? 'no data',
                )
              ],
            );
          });
        }),
      ),
    );
  }
}
