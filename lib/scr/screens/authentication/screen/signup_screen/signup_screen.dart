import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/screens/authentication/controllers/auth_controller.dart';

import 'widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final AuthNavigationController authNavigationController = Get.find();
  static String routeName = "SignUpScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(BSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                height: 150.v,
                width: 150.h,
                image: AssetImage(ImageConstant.greenLogo),
              ),
              // const SizedBox(
              //   height: BSizes.sm,
              // ),
              // Title
              Text(
                'Sign Up',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: BColors.primary),
              ),
              const SizedBox(
                height: BSizes.spaceBtwSections,
              ),
              //Form
              const BSignUpForm(),

              const SizedBox(
                height: BSizes.spaceBtwItems,
              ),

              /// Create account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Have a account? '),
                  TextButton(
                    onPressed: () {
                      authNavigationController.goToLogin();
                      // controller.gotoSignUpScreen
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: BColors.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
