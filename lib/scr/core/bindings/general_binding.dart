import 'package:get/get.dart';
import 'package:mbt_halal/scr/screens/authentication/controllers/auht_controller.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    // Bind your controllers or other dependencies here
    Get.put(AuthNavigationController());
    //  more bindings as needed
  }
}
