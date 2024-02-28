import 'package:flutter/material.dart';
import 'package:mbt_halal/scr/core/app_export.dart';

class BAppBarTheme {
  BAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: BColors.black, size: BSizes.iconMd),
    actionsIconTheme: IconThemeData(color: BColors.black, size: BSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: BColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: BColors.black, size: BSizes.iconMd),
    actionsIconTheme: IconThemeData(color: BColors.white, size: BSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: BColors.white),
  );
}
