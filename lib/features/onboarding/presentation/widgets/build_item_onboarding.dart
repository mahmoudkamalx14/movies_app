// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/core/cache/cache_helper.dart';
import 'package:movies_app/core/di/dependency_injection.dart';
import 'package:movies_app/core/routes/extentions.dart';
import 'package:movies_app/core/routes/routes.dart';
import 'package:movies_app/core/theme/app_styles.dart';

import 'package:movies_app/core/utils/spaces.dart';
import 'package:movies_app/features/onboarding/data/models/list_data_onboarding.dart';
import 'package:movies_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:movies_app/features/onboarding/presentation/widgets/smooth_page_indicator_widget.dart';

class BuildItemOnBoarding extends StatefulWidget {
  BuildItemOnBoarding({super.key, this.index});
  int? index;

  @override
  State<BuildItemOnBoarding> createState() => _BuildItemOnBoardingState();
}

PageController onBoardingController = PageController();

List<OnBoardingModel> model = onBoardingList;

class _BuildItemOnBoardingState extends State<BuildItemOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xff010101),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 31.w),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/logo.svg'),
                    horizontalSpace(11),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Movi ',
                              style: AppStyles.style25SemiBold
                                  .copyWith(color: Colors.white)),
                          TextSpan(
                            text: 'e+',
                            style: AppStyles.style25SemiBold.copyWith(
                              color: const Color(0xFFCD3D10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    if (widget.index! != 2)
                      GestureDetector(
                        onTap: () {
                          submitOnBoarding(context);
                        },
                        child: Text(
                          'Skip',
                          style: AppStyles.style20Medium.copyWith(
                            color: const Color(0xffCD3E10),
                          ),
                        ),
                      ),
                  ],
                ),
                Expanded(
                  child: Image.asset(model[widget.index!].image),
                ),
                Text(
                  model[widget.index!].body,
                  textAlign: TextAlign.center,
                  style: AppStyles.style26Medium,
                ),
                verticalSpace(24),
                const SmoothPageIndicatorWidget(),
                verticalSpace(21)
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: widget.index! == 2
          ? FloatingActionButton(
              backgroundColor: const Color(0xFF2A2929),
              onPressed: () {
                submitOnBoarding(context);
              },
              child: Text(
                'GO',
                style: AppStyles.style27SemiBold,
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  void submitOnBoarding(BuildContext context) {
    context.navigateToReplacement(Routes.getStartedScreen);

    getIt<CacheHelper>().saveData(key: Routes.onboardingScreen, value: true);
  }
}
