import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/theme/app_styles.dart';
import 'package:movies_app/core/utils/spaces.dart';
import 'package:movies_app/core/widgets/custom_text_button.dart';
import 'package:movies_app/features/onboarding/presentation/widgets/background_gest_started.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundGestStarted(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 64.h),
              child: Column(
                children: [
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Movi', style: AppStyles.style50Bold),
                          TextSpan(
                            text: 'e+',
                            style: AppStyles.style50Bold.copyWith(
                              color: const Color(0xFFCD3D10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Watch your favourite movie or series on only\none platform.You cat watch it anytime and\nanywhere',
                    textAlign: TextAlign.center,
                    style: AppStyles.style15Bold,
                  ),
                  verticalSpace(16),
                  CustomTextButton(onTap: () {}, text: 'Sign in'),
                  verticalSpace(22),
                  CustomTextButton(
                    onTap: () {},
                    text: 'Sign up',
                    backgroundColor: const Color(0xFF2A2929),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
