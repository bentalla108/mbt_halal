import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/common/widgets/appbar/appbar.dart';

import '../../controllers/auth_controller.dart';
import 'widgets/profile_menu.dart';
import 'widgets/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final AuthNavigationController authNavigationController = Get.find();

    return Scaffold(
      appBar: const BAppbar(
        title: Text("Profile"),
        centerTitle: true,
        showBackArrow: false,
        appBarSpacing: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "Personal informations",
              icon: Icons.person,
              press: () => {},
            ),
            ProfileMenu(
              text: "Payments",
              icon: Icons.payment,
              press: () {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: Icons.notifications,
              press: () {},
            ),
            ProfileMenu(
              text: "Suppor",
              icon: Icons.edit,
              press: () {},
            ),
            ProfileMenu(
              text: "Seetings",
              icon: Icons.settings,
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: Icons.logout,
              press: authNavigationController.logOut,
            ),
          ],
        ),
      ),
    );
  }
}
