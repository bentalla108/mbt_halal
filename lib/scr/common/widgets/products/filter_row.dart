import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

class FilterRow extends StatelessWidget {
  final Map fObj;
  final bool isSelect;
  final VoidCallback onPressed;
  const FilterRow(
      {super.key,
      required this.fObj,
      required this.isSelect,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
          Image.asset(
            isSelect
                ? "assets/images/img/checkbox_check.png"
                : "assets/images/img/checkbox.png",
            width: 25,
            height: 25,
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              fObj["name"],
              style: TextStyle(
                  color: isSelect ? BColors.primary : BColors.secondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ]),
      ),
    );
  }
}
