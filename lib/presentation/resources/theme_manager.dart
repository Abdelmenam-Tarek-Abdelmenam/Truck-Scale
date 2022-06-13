import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData = ThemeData(
  backgroundColor: ColorManager.backGroundYellow,
  splashFactory: InkRipple.splashFactory,
  scaffoldBackgroundColor: ColorManager.backGroundYellow,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ColorManager.whiteColor,
    foregroundColor: ColorManager.foreGroundGrey,
  ),
  primaryTextTheme: _textTheme,
  primaryColor: ColorManager.mainYellow,
  iconTheme: const IconThemeData(color: ColorManager.darkBlue, size: 30),
  brightness: Brightness.light,
  primaryColorDark: ColorManager.darkBlue,
  primaryColorLight: ColorManager.darkBlue,
  listTileTheme: ListTileThemeData(
    tileColor: ColorManager.whiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(ColorManager.darkYellow),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    )),
    foregroundColor: MaterialStateProperty.all(ColorManager.darkWhite),
  )),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
    side: MaterialStateBorderSide.resolveWith((states) =>
        BorderSide(color: Colors.grey.withOpacity(0.4), width: 2.0)),
    foregroundColor: MaterialStateProperty.all(ColorManager.darkBlue),
  )),
  textTheme: _textTheme,
  colorScheme: const ColorScheme(
    background: ColorManager.backGroundYellow,
    onSurface: ColorManager.darkYellow,
    onBackground: ColorManager.foreGroundGrey,
    onSecondary: ColorManager.whiteColor,
    onPrimary: ColorManager.lightBlue,
    primary: ColorManager.darkBlue,
    // till here
    secondary: ColorManager.lightYellow,
    surface: ColorManager.darkWhite,
    error: ColorManager.whiteColor,
    onError: ColorManager.lightBlue,
    brightness: Brightness.light,
  ),
);

class ColorManager {
  static const Color darkYellow = Color(0xFF805306);
  static const Color mainYellow = Color(0xFFF6A00C);
  static const Color backGroundYellow = Color(0xFFEDB31B);
  static const Color saturatedYellow = Color(0xFFFFD500);
  static const Color lightYellow = Color(0xFFFFEF80);
  static const Color darkBlue = Color(0xFF214471);
  static const Color lightBlue = Color(0xFFA9CCEF);
  static const Color whiteColor = Colors.white;
  static const Color darkWhite = Color(0xFFEEEEEE);
  static const Color blackColor = Color(0xFF2C3333);
  static const Color foreGroundGrey = Color(0xff939094);
  static const Color lightRed = Color(0xFFD32F2F);
  static const Color red = Color(0xFFB71C1C);
  static const Color brown = Color(0xFF805306);
}

final TextTheme _textTheme = TextTheme(
  headline1: GoogleFonts.poppins(
      fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
  headline2: GoogleFonts.poppins(
      //used
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: ColorManager.foreGroundGrey),
  headline3: GoogleFonts.poppins(
      //used
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorManager.whiteColor),
  headline4: GoogleFonts.roboto(
      //used
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorManager.foreGroundGrey),
  caption: GoogleFonts.alegreyaSans(
      //used
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: ColorManager.blackColor),

  subtitle1: GoogleFonts.alegreyaSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorManager.blackColor),
  subtitle2: GoogleFonts.alegreyaSans(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorManager.darkYellow),

  // here
  button: GoogleFonts.alegreyaSans(fontSize: 16, fontWeight: FontWeight.w500),
  overline: GoogleFonts.alegreyaSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.black),
);
