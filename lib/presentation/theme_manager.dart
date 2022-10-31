import 'package:flutter/material.dart';
import 'package:tut_application/presentation/color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // mainColors

      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.lightPrimary,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1

      //carView theme

      //appBar theme

      //buttonTheme

      //textTheme

      //inputDecorationTheme(textFromField)

      );
}
