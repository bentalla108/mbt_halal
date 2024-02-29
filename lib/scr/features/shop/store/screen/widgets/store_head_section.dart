import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/common/widgets/container/search_container.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class StoreHeadSection extends StatelessWidget {
  const StoreHeadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BAppbar(
      showBackArrow: true,
      title: null,
      actions: [
        BSearchContainer(
          text: 'Search in store,',
          showBorder: true,
          padding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
