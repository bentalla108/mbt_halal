import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mbt_halal/scr/core/utils/constants/colors.dart';
import 'package:mbt_halal/scr/screens/cart/screen/my_cart_screen.dart';
import 'package:mbt_halal/scr/screens/home/screen/home_sceen.dart';
import 'package:mbt_halal/scr/screens/store/screen/Store_screen.dart';

import 'screens/authentication/authentication.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  static String routeName = 'navigationMenu';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Obx(
      () => Scaffold(
        // extendBody: true,
        bottomNavigationBar: Container(
          height: 75,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 25,
              offset: const Offset(8, -2),
            )
          ]),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: BColors.primary,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              showUnselectedLabels: true,
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.normal),
              unselectedItemColor: Colors.black,
              currentIndex: controller.selectedIndex.value,
              onTap: (index) => controller.selectedIndex.value = index,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                      size: 38,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.shop), label: 'Store'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Iconsax.user), label: 'Profile')
              ],
            ),
          ),
        ),
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.screens,
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
