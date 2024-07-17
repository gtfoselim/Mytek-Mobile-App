import 'package:flutter/material.dart';
import 'package:mytekmobile/utils/theme/custom_themes/appbar_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/chip_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/text_field_theme.dart';
import 'package:mytekmobile/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark, // Set to dark
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black, // Set to a dark color
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
