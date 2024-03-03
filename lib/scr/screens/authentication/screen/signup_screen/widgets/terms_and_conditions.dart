import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

import '../../../controllers/sign_up_controller/sign_up_controller.dart';

class BTermAndCheck extends StatelessWidget {
  const BTermAndCheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;

    return Wrap(children: [
      SizedBox(
        height: 24,
        width: 24,
        child: Obx(() {
          return Checkbox(
            value: controller.privacyPolicy.value,
            onChanged: (value) => controller.privacyPolicy.value =
                !controller.privacyPolicy.value,
          );
        }),
      ),
      Text.rich(TextSpan(
        children: [
          TextSpan(
              text: '${BTextsConstant.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${BTextsConstant.privacyPolicy} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: BColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: BColors.primary,
                ),
          ),
          TextSpan(
              text: '${BTextsConstant.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: '${BTextsConstant.termsOfUse} ',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: BColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: BColors.primary,
                ),
          ),
        ],
      )),
    ]);
  }
}
