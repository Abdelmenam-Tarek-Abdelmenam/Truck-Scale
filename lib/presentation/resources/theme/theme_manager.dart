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
  primaryTextTheme: _textTheme,
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
    fixedSize: MaterialStateProperty.all(Size(100.w, 30.h)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    )),
    textStyle: MaterialStateProperty.all(_textTheme.button),
    foregroundColor: MaterialStateProperty.all(ColorManager.darkWhite),
  )),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
    side: MaterialStateBorderSide.resolveWith((states) =>
        BorderSide(color: Colors.grey.withOpacity(0.4), width: 2.0)),
    foregroundColor: MaterialStateProperty.all(ColorManager.mainBlue),
  )),
  textTheme: _textTheme,
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
