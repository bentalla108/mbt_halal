import 'package:get/get.dart';
import 'package:mbt_halal/scr/screens/authentication/controllers/auth_controller.dart';

import '../utils/preferences/pref_utils.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    // Bind your controllers or other dependencies here
    Get.put(AuthNavigationController());
    Get.put(PrefUtils());
    //  more bindings as needed
  }
}
