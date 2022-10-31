import 'package:flutter/material.dart';
import 'package:tut_application/presentation/color_manager.dart';
import 'package:tut_application/presentation/font_manager.dart';
import 'package:tut_application/presentation/styles_manager.dart';
import 'package:tut_application/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // mainColors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,

    //carView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //appBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    ),

    //buttonTheme

    //textTheme

    //inputDecorationTheme(textFromField)
  );
}
