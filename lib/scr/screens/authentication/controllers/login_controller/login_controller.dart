import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../../../core/utils/helpers/helper_functions.dart';
import '../../../../core/utils/http/endpoint.dart';
import '../../../../core/utils/http/http_service_call.dart';
import '../auth_controller.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final RxBool isHidePassword = true.obs;

  @override
  void onInit() {
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
      Get.snackbar(BTextsConstant.appName, "Pleaser enter valid email address");
      return;
    }
    if (passwordController.value.text.length < 6) {
      Get.snackbar(BTextsConstant.appName,
          "Pleaser enter valid password min 6 character");
      return;
    }
    //: Loading
    BHelperFunctions.showHUD();
    //
    HttpServiceCall.post(SVKey.svLogin, {
      "email": emailController.value.text,
      "password": passwordController.value.text,
    }, withSuccess: (resObj) async {
      BHelperFunctions.hideHUD();

      var payload = resObj[KKey.payload] as Map? ?? {};

      PrefUtils.udSet(payload, BTextsConstant.userPayload);
      PrefUtils.udBoolSet(true, BTextsConstant.userLogin);

      Get.delete<LoginController>();
      AuthNavigationController.instance.screenSelect();

      Get.snackbar(BTextsConstant.appName, resObj["message"].toString());
    }, failure: (err) async {
      BHelperFunctions.hideHUD();
      Get.snackbar(BTextsConstant.appName, err.toString());
    });
  }
}
