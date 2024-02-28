import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import 'terms_and_conditions.dart';

class BSignUpForm extends StatelessWidget {
  const BSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SignUpController());

    const bool isTrue = 1 == 1;

    return Form(
      // key: controller.signUpFormKey,
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                  child: CustomTextField(
                // validator: (value) =>
                //     BValidator.validateEmptyText('First Name', value),
                // controller: controller.firstName,
                labelText: BTextsConstant.firstName,
                prefixIconName: Iconsax.user,
              )),
              SizedBox(
                width: BSizes.spaceBtwItems,
              ),
              Expanded(
                child: CustomTextField(
                  // validator: (value) =>
                  //     BValidator.validateEmptyText('Last Name', value),
                  // controller: controller.lastName,
                  labelText: BTextsConstant.lastName,
                  prefixIconName: Iconsax.user,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          const CustomTextField(
            // validator: (value) =>
            //     BValidator.validateEmptyText('Username', value),
            // controller: controller.username,
            labelText: BTextsConstant.username,
            prefixIconName: Iconsax.user,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),
          const CustomTextField(
            // validator: (value) => BValidator.validateEmail(value),
            // controller: controller.email,
            labelText: BTextsConstant.email,
            prefixIconName: Iconsax.direct,
          ),
          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          CustomTextField(
              // validator: (value) => BValidator.validatePassword(value),
              // controller: controller.password,
              // obscureText: controller.hidePassword.value,
              labelText: BTextsConstant.password,
              prefixIconName: Iconsax.password_check,
              suffixIconName: IconButton(
                onPressed: () =>
                    {}, // controller.hidePassword.value =!controller.hidePassword.value,
                icon: const Icon(// controller.hidePassword.value
                    isTrue ? Iconsax.eye : Iconsax.eye_slash),
              )),

          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          /// Term & Condition check
          const BTermAndCheck(),

          /// Buttons Sections
          /// Create account buttons

          const SizedBox(
            height: BSizes.spaceBtwItems,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(BColors.secondary)),
              onPressed: () => {}, //controller.signUp(),
              child: const Text('Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
