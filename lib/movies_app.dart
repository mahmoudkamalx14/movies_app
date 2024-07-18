// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/cache/cache_helper.dart';
import 'package:movies_app/core/di/dependency_injection.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/core/routes/routes.dart';

class MoviesApp extends StatelessWidget {
  MoviesApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  dynamic onboarding =
      getIt<CacheHelper>().getData(key: Routes.onboardingScreen);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: sharedStartApp(),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }

  String sharedStartApp() {
    if (onboarding == true) {
      return Routes.getStartedScreen;
    } else {
      return Routes.onboardingScreen;
    }
  }
}
