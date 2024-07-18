import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/theme/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.onTap,
      required this.text,
      this.textStyle,
      this.backgroundColor});

  final Function() onTap;
  final String text;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 331.w,
        height: 75.h,
        decoration: ShapeDecoration(
          color: backgroundColor ?? const Color(0xFFCD3D10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ?? AppStyles.style27SemiBold,
          ),
        ),
      ),
    );
  }
}
