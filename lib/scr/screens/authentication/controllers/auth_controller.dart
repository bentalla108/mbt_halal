import 'package:get/get.dart';

class AuthNavigationController extends GetxController {
  static AuthNavigationController get instance => Get.find();

  RxBool isLogged = false.obs;
  RxBool isRegistered = false.obs;

  void goToLogin() {
    isRegistered.value = true;
    update();
  }

  void goToSignUp() {
    isRegistered.value = false;
    update();
  }

  void goToProfile() {
    isLogged.value = true;
    update();
  }

  void logOut() {
    isLogged.value = false;
    update();
  }
}
