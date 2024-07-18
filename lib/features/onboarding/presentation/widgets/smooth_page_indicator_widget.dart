import 'package:flutter/material.dart';
import 'package:movies_app/features/onboarding/data/models/list_data_onboarding.dart';
import 'package:movies_app/features/onboarding/presentation/widgets/build_item_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: onBoardingController,
      count: onBoardingList.length,
      axisDirection: Axis.horizontal,
      effect: const SlideEffect(
        spacing: 8.0,
        radius: 10.0,
        dotWidth: 14.0,
        dotHeight: 16.0,
        paintStyle: PaintingStyle.fill,
        strokeWidth: 1.5,
        dotColor: Colors.white,
        activeDotColor: Color(0xffCD3E10),
      ),
    );
  }
}
