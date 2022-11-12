import 'package:countries_app/app/const/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final String text;
  final IconData? icon;
  final double containerWidth;
  const FilterWidget({
    Key? key,
    required this.containerWidth,
    required this.color,
    required this.icon,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            width: containerWidth,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4.r),
                border: Border.all(
                  width: 0.2.w,
                  color: AppColor.containerBorderColor,
                ),
                boxShadow: [BoxShadow()]),
          )
        ],
      ),
    );
  }
}
