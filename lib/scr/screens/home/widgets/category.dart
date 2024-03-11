import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../../common/widgets/products/category_cell.dart';
import '../../../models/category_model.dart';

class CategoryHomeWidgets extends StatelessWidget {
  const CategoryHomeWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.adaptSize,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(right: 15),
          itemCount: TypeModelMock.getMockTypes().length,
          itemBuilder: (context, index) {
            var pObj = TypeModelMock.getMockTypes()[index];

            return CategoryCell(
              pObj: pObj,
              onPressed: () {},
            );
          }),
    );
  }
}
