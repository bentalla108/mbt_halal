import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

/* -- Light & Dark Outlined Button Themes -- */
class BOutlinedButtonTheme {
  BOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: BColors.dark,
      side: const BorderSide(color: BColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: BColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: BSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: BColors.light,
      side: const BorderSide(color: BColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: BColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: BSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BSizes.buttonRadius)),
    ),
  );
}
