import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class BTextFormFieldTheme {
  BTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: BColors.darkGrey,
    suffixIconColor: BColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: BSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: BSizes.fontSizeMd, color: BColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: BSizes.fontSizeSm, color: BColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: BColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: BColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: BColors.darkGrey,
    suffixIconColor: BColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: BSizes.fontSizeMd, color: BColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: BSizes.fontSizeSm, color: BColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: BColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: BColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(BSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: BColors.warning),
    ),
  );
}
