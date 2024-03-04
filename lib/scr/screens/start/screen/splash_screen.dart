import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String routeName = "splashScreen";

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController()).loadScreen();
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
              0.5,
              1.0
            ],
                colors: [
              const Color(0xFF018B47),
              const Color(0xFFD4BA06).withOpacity(0.48)
            ])),
        child: Center(
          child: CustomImageView(
            imagePath: ImageConstant.whiteLogo,
          ),
        ),
      ),
    );
  }
}
