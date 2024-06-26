import 'package:flutter/material.dart';
import 'package:flutter_getx_todo/core/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function() onTap;
  CustomButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120.w,
        height: 40.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(
            15.r,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
