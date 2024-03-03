import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/helpers/globs.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final RxBool isHidePassword = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    if (kDebugMode) {
      print("LoginViewModel Init ");
      emailController.value.text = "test@gmail.com";
      passwordController.value.text = "123456";
    }
  }

  //! Show Hide password
  void showPassword() {
    isHidePassword.value = !isHidePassword.value;
  }

  //! Check Email and Password & Call Api
  void apiCallLogin() {
    if (!GetUtils.isEmail(emailController.value.text)) {
      Get.snackbar(Globs.appName, "Pleaser enter valid email address");
      return;
    }
    if (passwordController.value.text.length < 6) {
      Get.snackbar(
          Globs.appName, "Pleaser enter valid password min 6 character");
      return;
    }
    //: Loading
    // Globs.showHUD();
  }
}
