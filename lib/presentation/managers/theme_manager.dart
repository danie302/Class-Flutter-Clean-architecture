import 'package:clean_arch/presentation/managers/color_manager.dart';
import 'package:clean_arch/presentation/managers/font_manager.dart';
import 'package:clean_arch/presentation/managers/styles_manager.dart';
import 'package:clean_arch/presentation/managers/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkGrey,
    splashColor: ColorManager.primaryOpacity70,
    disabledColor: ColorManager.grey1,
    accentColor: ColorManager.grey,

    // card view theme
    cardTheme: CardTheme(
      elevation: AppSize.s4,
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: AppSize.s4,
      color: ColorManager.primary,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularTextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),

    // button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularTextStyle(
          color: ColorManager.white,
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s4)),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      headline1: getRegularTextStyle(
        fontSize: FontSize.s16,
        color: ColorManager.darkGrey,
      ),
      headline2: getRegularTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.darkGrey,
      ),
      headline3: getRegularTextStyle(
        fontSize: FontSize.s12,
        color: ColorManager.darkGrey,
      ),
      headline4: getRegularTextStyle(
        fontSize: FontSize.s10,
        color: ColorManager.darkGrey,
      ),
      headline5: getRegularTextStyle(
        fontSize: FontSize.s8,
        color: ColorManager.darkGrey,
      ),
      headline6: getRegularTextStyle(
        fontSize: FontSize.s6,
        color: ColorManager.darkGrey,
      ),
      subtitle1: getRegularTextStyle(
        fontSize: FontSize.s14,
        color: ColorManager.grey,
      ),
      subtitle2: getRegularTextStyle(
        fontSize: FontSize.s12,
        color: ColorManager.grey,
      ),
      bodyText1: getRegularTextStyle(
        fontSize: FontSize.s10,
        color: ColorManager.grey,
      ),
      bodyText2: getRegularTextStyle(
        fontSize: FontSize.s8,
        color: ColorManager.grey,
      ),
      button: getRegularTextStyle(
        fontSize: FontSize.s10,
        color: ColorManager.primary,
      ),
      caption: getRegularTextStyle(
        fontSize: FontSize.s8,
        color: ColorManager.grey,
      ),
      overline: getRegularTextStyle(
        fontSize: FontSize.s6,
        color: ColorManager.grey,
      ),
    ),

    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularTextStyle(color: ColorManager.grey1),
      labelStyle: getMediumTextStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularTextStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey1, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),
  );
}
