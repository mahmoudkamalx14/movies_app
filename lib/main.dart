import 'package:flutter/material.dart';
import 'package:movies_app/core/cache/cache_helper.dart';
import 'package:movies_app/core/di/dependency_injection.dart';
import 'package:movies_app/core/routes/app_router.dart';
import 'package:movies_app/movies_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  await CacheHelper().init();

  runApp(MoviesApp(appRouter: AppRouter()));
}




//? dart run build_runner build --delete-conflicting-outputs

//! dart run flutter_native_splash:create --path=flutter_native_splash.yaml