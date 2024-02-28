import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/features/authentication/screen/login_screen/login_screen.dart';
import 'package:mbt_halal/scr/features/authentication/screen/signup_screen/signup_screen.dart';

import 'controllers/auht_controller.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          final AuthNavigationController authNavigationController = Get.find();
          final isLogin = authNavigationController.isLogin.value;

          return isLogin ? const LoginScreen() : SignUpScreen();
        },
      ),
    );
  }
}
