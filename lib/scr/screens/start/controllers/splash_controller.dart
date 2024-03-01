import 'package:get/get.dart';

import '../screen/loading.dart';

class SplashController extends GetxController {
  void loadScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    Get.offAll(() => const LoadingScreen());
  }
}
