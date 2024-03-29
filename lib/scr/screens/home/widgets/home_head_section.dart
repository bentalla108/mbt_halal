import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class HomeHeadSection extends StatelessWidget {
  const HomeHeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BAppbar(
      showBackArrow: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            BTextsConstant.welcomBack,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: BColors.textPrimary),
          ),
          Text(
            BTextsConstant.name,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: BColors.textPrimary),
          ),
        ],
      ),
      actions: const [
        Icon(
          Iconsax.search_normal,
          size: 24,
        )
      ],
    );
  }
}
