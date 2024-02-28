import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/features/authentication/controllers/auht_controller.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(OnBoardingController());
    final AuthNavigationController authNavigationController = Get.find();

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right), labelText: 'Email'),
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Iconsax.eye_slash),
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: 'Password'),
            ),

            const SizedBox(
              height: BSizes.spaceBtwInputFields / 2,
            ),

            /// Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// Forget Password
                TextButton(
                  onPressed: () {
                    // Get.to(() => const ForgotPasswordScreen());
                  },
                  child: const Text(
                    'Forgot password',
                    style: TextStyle(color: BColors.primary),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: BSizes.spaceBtwSections,
            ),

            /// Sign in
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(BColors.secondary)),
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text('Sing In'),
              ),
            ),
            const SizedBox(
              height: BSizes.spaceBtwItems,
            ),

            /// Create account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('No account? '),
                TextButton(
                  onPressed: () {
                    authNavigationController.goToSignUp();
                    // controller.gotoSignUpScreen
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: BColors.primary),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
