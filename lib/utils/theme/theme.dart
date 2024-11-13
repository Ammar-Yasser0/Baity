import 'package:baity/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:baity/utils/theme/widget_themes/appbar_theme.dart';
import 'package:baity/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:baity/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:baity/utils/theme/widget_themes/chip_theme.dart';
import 'package:baity/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:baity/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:baity/utils/theme/widget_themes/text_field_theme.dart';
import 'package:baity/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class FAppTheme {
  FAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'AdobeArabic',
    disabledColor: FColors.grey,
    brightness: Brightness.light,
    primaryColor: FColors.primary,
    textTheme: FTextTheme.lightTextTheme,
    chipTheme: FChipTheme.lightChipTheme,
    scaffoldBackgroundColor: FColors.white,
    appBarTheme: FAppBarTheme.lightAppBarTheme,
    checkboxTheme: FCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: FElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.lightInputDecorationTheme,
    navigationBarTheme: NavigationBarThemeData(
      height: 60,
      indicatorColor: FColors.secondary,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      iconTheme: const WidgetStatePropertyAll(
        IconThemeData(color: FColors.white, size: 30),
      ),
      labelTextStyle: const WidgetStatePropertyAll(
        TextStyle(
            fontSize: FSizes.fontSizeMd,
            color: FColors.white,
            fontWeight: FontWeight.bold),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'AdobeArabic',
    disabledColor: FColors.grey,
    brightness: Brightness.dark,
    primaryColor: FColors.primary,
    textTheme: FTextTheme.darkTextTheme,
    chipTheme: FChipTheme.darkChipTheme,
    scaffoldBackgroundColor: FColors.black,
    appBarTheme: FAppBarTheme.darkAppBarTheme,
    checkboxTheme: FCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: FBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: FElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: FOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: FTextFormFieldTheme.darkInputDecorationTheme,
  );
}
