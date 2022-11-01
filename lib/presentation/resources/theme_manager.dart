import 'package:flutter/material.dart';
import 'package:tut_application/presentation/resources/color_manager.dart';
import 'package:tut_application/presentation/resources/styles_manager.dart';
import 'package:tut_application/presentation/resources/values_manager.dart';
import 'font_manager.dart';
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
      elevation:AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
    ),

    //buttonTheme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    //elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSize.s17,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    //textTheme
    textTheme: TextTheme(
      displayLarge: getLightStyle(color: ColorManager.white,fontSize: FontSize.s22),
      headline1: getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
      subtitle1: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.grey1,),
      bodyText1: getRegularStyle(color: ColorManager.grey,),
    ),

    //inputDecorationTheme(textFromField)
    inputDecorationTheme:InputDecorationTheme(
      //contentPadding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      //hintStyle
      hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      //labelStyle
      labelStyle: getMediumStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      //errorStyle
      errorStyle: getRegularStyle(color: ColorManager.error,),
      //enabledBorderStyle
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      //focusedBorderStyle
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      //errorBorderStyle
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      //focusedErrorBorderStyle
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
    ),
  );
}
