import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class BLoginHeader extends StatelessWidget {
  const BLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          height: 150.v,
          width: 150.h,
          image: AssetImage(ImageConstant.greenLogo),
        ),
        // const SizedBox(
        //   height: BSizes.sm,
        // ),
        Text(
          // textAlign: TextAlign.start,
          'Sing In',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: BColors.primary),
        ),
        const SizedBox(
          height: BSizes.sm,
        ),
      ],
    );
  }
}
