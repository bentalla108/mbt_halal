import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class HomeHeadSection extends StatelessWidget {
  const HomeHeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BAppbar(
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
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Icon(
            Icons.search_off_outlined,
            size: 32,
          ),
        )
      ],
    );
  }
}
