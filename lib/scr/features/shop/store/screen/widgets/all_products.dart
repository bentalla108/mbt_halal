import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/models/mock_model/product.dart';

import '../../../../../common/widgets/grid_layout.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(BSizes.md),
        child: BGridLayout(
          mainAxisExtent: 290,
          itemCount: 12,
          itemBuilder: (context, index) => SingleProductWidget(
            product: MockProductModel.random(),
          ),
        ),
      ),
    );
  }
}
