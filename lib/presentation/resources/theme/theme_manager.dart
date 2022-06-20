import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

part "color_manager.dart";
part "font_manager.dart";

ThemeData lightThemeData = ThemeData(
  dividerColor: ColorManager.mainBlue.withOpacity(0.5),
  backgroundColor: ColorManager.lightYellow,
  splashFactory: InkRipple.splashFactory,
  scaffoldBackgroundColor: ColorManager.lightYellow,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ColorManager.whiteColor,
    foregroundColor: ColorManager.foreGroundGrey,
  ),
  primaryTextTheme: _textTheme(false),
  primaryColor: ColorManager.mainBlue,
  iconTheme: const IconThemeData(color: ColorManager.mainBlue, size: 30),
  brightness: Brightness.light,
  primaryColorDark: ColorManager.mainBlue,
  primaryColorLight: ColorManager.mainBlue,
  listTileTheme: ListTileThemeData(
    tileColor: ColorManager.whiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(ColorManager.mainBlue),
    fixedSize: MaterialStateProperty.all(Size(120, 30.h)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    )),
    textStyle: MaterialStateProperty.all(_textTheme(false).button),
    foregroundColor: MaterialStateProperty.all(ColorManager.darkWhite),
  )),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
    side: MaterialStateBorderSide.resolveWith((states) =>
        BorderSide(color: Colors.grey.withOpacity(0.4), width: 2.0)),
    foregroundColor: MaterialStateProperty.all(ColorManager.mainBlue),
  )),
  textTheme: _textTheme(false),
  colorScheme: const ColorScheme(
    background: ColorManager.lightYellow,
    onSurface: ColorManager.mainYellow,
    onBackground: ColorManager.lightBlue,
    onSecondary: ColorManager.whiteColor,
    onPrimary: ColorManager.mainBlue,
    primary: ColorManager.mainBlue,
    // till here
    secondary: ColorManager.lightYellow,
    surface: ColorManager.darkWhite,
    error: ColorManager.whiteColor,
    onError: ColorManager.mainBlue,
    brightness: Brightness.light,
  ),
);

ThemeData darkThemeData = ThemeData(
  dividerColor: ColorManagerDark.mainBlue.withOpacity(0.5),
  backgroundColor: ColorManagerDark.lightYellow,
  splashFactory: InkRipple.splashFactory,
  scaffoldBackgroundColor: ColorManagerDark.lightYellow,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ColorManagerDark.whiteColor,
    foregroundColor: ColorManagerDark.foreGroundGrey,
  ),
  primaryTextTheme: _textTheme(true),
  primaryColor: ColorManagerDark.mainBlue,
  iconTheme: const IconThemeData(color: ColorManagerDark.mainBlue, size: 30),
  brightness: Brightness.dark,
  primaryColorDark: ColorManagerDark.mainBlue,
  primaryColorLight: ColorManagerDark.mainBlue,
  listTileTheme: ListTileThemeData(
    tileColor: ColorManagerDark.whiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(ColorManagerDark.mainBlue),
    fixedSize: MaterialStateProperty.all(Size(120, 30.h)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    )),
    textStyle: MaterialStateProperty.all(_textTheme(true).button),
    foregroundColor: MaterialStateProperty.all(ColorManagerDark.darkWhite),
  )),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
    side: MaterialStateBorderSide.resolveWith((states) =>
        BorderSide(color: Colors.grey.withOpacity(0.4), width: 2.0)),
    foregroundColor: MaterialStateProperty.all(ColorManagerDark.mainBlue),
  )),
  textTheme: _textTheme(true),
  colorScheme: const ColorScheme(
    background: ColorManagerDark.lightYellow,
    onSurface: ColorManagerDark.mainYellow,
    onBackground: ColorManagerDark.lightBlue,
    onSecondary: ColorManagerDark.whiteColor,
    onPrimary: ColorManagerDark.mainBlue,
    primary: ColorManagerDark.mainBlue,
    // till here
    secondary: ColorManagerDark.lightYellow,
    surface: ColorManagerDark.darkWhite,
    error: ColorManagerDark.whiteColor,
    onError: ColorManagerDark.mainBlue,
    brightness: Brightness.dark,
  ),
);
