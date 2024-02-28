import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/models/mock_model/product.dart';

class ProductSCrool extends StatelessWidget {
  const ProductSCrool({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 305.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (context, index) => const SizedBox(
          width: BSizes.md,
        ),
        itemBuilder: (context, index) => SingleProductWidget(
          product: MockProductModel.random(),
        ),
      ),
    );
  }
}
