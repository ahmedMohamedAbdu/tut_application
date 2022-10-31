import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tut_application/presentation/color_manager.dart';
import 'package:tut_application/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // mainColors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    //carView theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation:AppSize.s4,
    ),

    //appBar theme

    //buttonTheme

    //textTheme

    //inputDecorationTheme(textFromField)
  );
}
