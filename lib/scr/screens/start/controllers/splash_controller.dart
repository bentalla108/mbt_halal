import 'package:get/get.dart';
import '../../../core/utils/preferences/pref_utils.dart';

class SplashController extends GetxController {
  void loadScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    final PrefUtils pref = PrefUtils();

    bool? isFirtTimer = pref.getIsFirstTimer();

    if (isFirtTimer != null) {
      if (!isFirtTimer) {
        isFirtTimer = false;
        pref.saveIsFirstTimer(isFirtTimer);

        Get.offNamed('navigationMenu');
      } else {
        Get.offAndToNamed("/initScreen");
      }
    } else {
      pref.saveIsFirstTimer(false);
      Get.offAndToNamed("/initScreen");
    }
  }
}
