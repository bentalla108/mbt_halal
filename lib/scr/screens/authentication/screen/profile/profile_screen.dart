import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtb_halal/scr/common/widgets/appbar/appbar.dart';
import 'package:mtb_halal/scr/core/utils/constants/sizes.dart';

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
      appBar: BAppbar(
        title: const Text("Account seetings"),
        centerTitle: true,
        showBackArrow: true,
        appBarSpacing: false,
        actions: [
          GestureDetector(
              onTap: authNavigationController.logOut,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.logout),
                  Text(
                    'Log out',
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const ProfilePic(),
                const SizedBox(
                  width: BSizes.spaceBtwItems,
                ),
                Column(
                  children: [
                    Text(
                      'NOM -Prenom',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'email@email.fr',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                )
              ],
            ),
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
          ],
        ),
      ),
    );
  }
}
