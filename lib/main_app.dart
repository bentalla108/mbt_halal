import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/core/utils/themes/theme.dart';
import 'package:mbt_halal/scr/features/splash/screen/loading.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: BAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
          backgroundColor: BColors.primaryBackground, body: LoadingScreen()),
    );
  }
}
