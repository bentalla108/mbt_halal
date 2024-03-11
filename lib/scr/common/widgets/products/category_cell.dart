import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import '../../../models/category_model.dart';

class CategoryCell extends StatelessWidget {
  final CategoryModel pObj;
  final VoidCallback onPressed;

  const CategoryCell({super.key, required this.pObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 250.adaptSize,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: (pObj.color ?? BColors.primary).withOpacity(0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: pObj.image ?? "",
                  width: 50.adaptSize,
                  height: 50.adaptSize,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: BSizes.spaceBtwItems,
                ),
                Expanded(
                  child: Text(
                    pObj.typeName ?? "",
                    style: const TextStyle(
                        color: BColors.secondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
