import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/screens/authentication/screen/signup_screen/signup_screen.dart';

import 'controllers/auht_controller.dart';
import 'screen/otp/otp_screen.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          final AuthNavigationController authNavigationController = Get.find();
          final isLogin = authNavigationController.isLogin.value;

          return isLogin ? const OtpScreen() : SignUpScreen();
        },
      ),
    );
  }
}
