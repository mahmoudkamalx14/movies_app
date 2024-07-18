import 'package:flutter/material.dart';
import 'package:movies_app/features/onboarding/data/models/list_data_onboarding.dart';
import 'package:movies_app/features/onboarding/presentation/widgets/build_item_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => BuildItemOnBoarding(index: index),
      itemCount: onBoardingList.length,
      controller: onBoardingController,
    );
  }
}
