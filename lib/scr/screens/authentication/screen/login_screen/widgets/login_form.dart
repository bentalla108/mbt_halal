import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/screens/authentication/controllers/login_controller/login_controller.dart';

import '../../../controllers/auth_controller.dart';

class BLoginForm extends StatelessWidget {
  const BLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    final AuthNavigationController authNavigationController =
        Get.put(AuthNavigationController());

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: loginController.emailController.value,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right), labelText: 'Email'),
            ),
            const SizedBox(
              height: BSizes.spaceBtwInputFields,
            ),

            /// Password
            Obx(
              () => TextFormField(
                controller: loginController.passwordController.value,
                obscureText: loginController.isHidePassword.value,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(loginController.isHidePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: loginController.showPassword,
                    ),
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: 'Password'),
              ),
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
                // onPressed: () => Get.to(() => const ProfileScreen()
                // ),
                onPressed: authNavigationController.isLogged,
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
                const Text('No account?'),
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
