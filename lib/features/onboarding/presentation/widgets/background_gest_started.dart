import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundGestStarted extends StatelessWidget {
  const BackgroundGestStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430.w,
      height: 932.h,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color(0xFF010101),
        shape: RoundedRectangleBorder(),
        image: DecorationImage(
          image: AssetImage('assets/images/getStarted.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
