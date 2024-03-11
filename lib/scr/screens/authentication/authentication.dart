import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';
import 'package:mtb_halal/scr/screens/authentication/screen/profile/profile_screen.dart';

import 'controllers/auth_controller.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          final AuthNavigationController authNavigationController = Get.find();
          final isRegistered = authNavigationController.isRegistered.value;
          final isLogged = authNavigationController.isLogged.value;
          if (kDebugMode) {
            print(isRegistered);
          }
          if (kDebugMode) {
            print('User is logged  : $isLogged');
          }
          return isLogged
              ? const ProfileScreen()
              : (isRegistered ? const LoginScreen() : SignUpScreen());
        },
      ),
    );
  }
}
