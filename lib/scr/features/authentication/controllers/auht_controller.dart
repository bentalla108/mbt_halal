import 'package:get/get.dart';

class AuthNavigationController extends GetxController {
  RxBool isLogin = false.obs;

  void goToLogin() {
    isLogin.value = true;
    update();
  }

  void goToSignUp() {
    isLogin.value = false;
    update();
  }
}
