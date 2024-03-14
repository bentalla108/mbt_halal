import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mtb_halal/scr/core/utils/constants/colors.dart';
import 'package:mtb_halal/scr/screens/cart/screen/my_cart_screen.dart';
import 'package:mtb_halal/scr/screens/home/screen/home_sceen.dart';
import 'package:mtb_halal/scr/screens/store/screen/store_screen.dart';

import 'screens/authentication/authentication.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key});

  static String routeName = 'navigationMenu';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Example App'),
        ),
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.screens,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 75,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 25,
                  offset: const Offset(8, -2),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 38,
                    color: controller.selectedIndex.value == 0
                        ? BColors.primary
                        : Colors.black,
                  ),
                  onPressed: () {
                    controller.selectedIndex.value = 0;
                  },
                ),
                IconButton(
                  icon: Icon(
                    Iconsax.shop,
                    color: controller.selectedIndex.value == 1
                        ? BColors.primary
                        : Colors.black,
                  ),
                  onPressed: () {
                    controller.selectedIndex.value = 1;
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: controller.selectedIndex.value == 2
                        ? BColors.primary
                        : Colors.black,
                  ),
                  onPressed: () {
                    controller.selectedIndex.value = 2;
                  },
                ),
                IconButton(
                  icon: Icon(
                    Iconsax.user,
                    color: controller.selectedIndex.value == 3
                        ? BColors.primary
                        : Colors.black,
                  ),
                  onPressed: () {
                    controller.selectedIndex.value = 3;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const MyCartView(),
    const AuthenticationScreen(),
  ];
}
