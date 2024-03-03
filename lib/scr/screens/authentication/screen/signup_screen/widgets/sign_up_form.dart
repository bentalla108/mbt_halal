import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/screens/authentication/controllers/sign_up_controller/sign_up_controller.dart';

import 'terms_and_conditions.dart';

class BSignUpForm extends StatelessWidget {
  const BSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SignUpController controller = Get.put(SignUpController());

    return Form(
      // key: controller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CustomTextField(
                // validator: (value) =>
                //     BValidator.validateEmptyText('First Name', value),
                controller: controller.firstNameController.value,
                labelText: BTextsConstant.firstName,
                prefixIconName: Iconsax.user,
              )),
              const SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Expanded(
                child: CustomTextField(
                  // validator: (value) =>
                  //     BValidator.validateEmptyText('Last Name', value),
                  controller: controller.lastNameController.value,
                  labelText: BTextsConstant.lastName,
                  prefixIconName: Iconsax.user,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            // validator: (value) =>
            //     BValidator.validateEmptyText('Username', value),
            controller: controller.usernameController.value,
            labelText: BTextsConstant.username,
            prefixIconName: Iconsax.user,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          CustomTextField(
            // validator: (value) => BValidator.validateEmail(value),
            controller: controller.emailController.value,
            labelText: BTextsConstant.email,
            prefixIconName: Iconsax.direct,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          Obx(() => CustomTextField(
              // validator: (value) => BValidator.validatePassword(value),
              controller: controller.passwordController.value,
              obscureText: controller.isHidePassword.value,
              labelText: BTextsConstant.password,
              prefixIconName: Iconsax.password_check,
              suffixIconName: IconButton(
                onPressed: controller.showPassword,
                icon: Icon(controller.isHidePassword.value
                    ? Iconsax.eye
                    : Iconsax.eye_slash),
              ))),

          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          /// Term & Condition check
          const BTermAndCheck(),

          /// Buttons Sections
          /// Create account buttons

          const SizedBox(
            height: BSizes.spaceBtwSections,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(BColors.secondary)),
              onPressed: controller.apiCallSignUp,
              child: const Text('Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
