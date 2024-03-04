import 'package:flutter/material.dart';
import 'package:mtb_halal/scr/core/utils/constants/colors.dart';
import 'package:mtb_halal/scr/core/utils/themes/appbar_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/bottom_sheet_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/checkbox_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/chip_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/elevated_button_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/outlined_button_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/text_field_theme.dart';
import 'package:mtb_halal/scr/core/utils/themes/text_theme.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    disabledColor: BColors.grey,
    brightness: Brightness.light,
    primaryColor: BColors.primary,
    textTheme: BTextTheme.lightTextTheme,
    chipTheme: BChipTheme.lightChipTheme,
    scaffoldBackgroundColor: BColors.white,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme,
  );

  //
}
