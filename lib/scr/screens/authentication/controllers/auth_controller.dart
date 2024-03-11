import 'package:get/get.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class AuthNavigationController extends GetxController {
  static AuthNavigationController get instance => Get.find();

  RxBool isLogged = false.obs;
  RxBool isRegistered = false.obs;

  final userPayload = UserPayloadModel().obs;

  void screenSelect() {
    if (PrefUtils.udValueBool(BTextsConstant.userLogin)) {
      userPayload.value = UserPayloadModel.fromJson(
          PrefUtils.udValue(BTextsConstant.userPayload));
      isLogged.value = true;
      update();
    } else {
      isLogged.value = false;
      update();
    }
  }

  void goToLogin() {
    isRegistered.value = true;
    update();
  }

  void goToSignUp() {
    isRegistered.value = false;
    update();
  }

  // void goToProfile() {
  //   isLogged.value = true;
  //   update();
  // }

  void logOut() {
    userPayload.value = UserPayloadModel();
    PrefUtils.udBoolSet(false, BTextsConstant.userLogin);
    isLogged.value = false;
    update();
  }
}
