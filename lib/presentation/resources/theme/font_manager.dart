part of 'theme_manager.dart';

final TextTheme _textTheme = TextTheme(
  headline1: GoogleFonts.poppins(
      fontSize: 26.sp,
      fontWeight: FontWeight.bold,
      color: ColorManager.mainYellow),
  headline2: GoogleFonts.alegreyaSans(
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: ColorManager.whiteColor),
  headline3: GoogleFonts.alegreyaSans(
      //used
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorManager.mainBlue),
  headline4: GoogleFonts.alegreyaSans(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: ColorManager.mainYellow),
  caption: GoogleFonts.alegreyaSans(
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4.sp,
      color: ColorManager.whiteColor),

  subtitle1: GoogleFonts.alegreyaSans(
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      color: ColorManager.whiteColor),
  subtitle2: GoogleFonts.alegreyaSans(
      fontSize: 24.sp,
      fontWeight: FontWeight.w400,
      color: ColorManager.mainYellow),

  // here
  button:
      GoogleFonts.alegreyaSans(fontSize: 16.sp, fontWeight: FontWeight.w500),
  overline: GoogleFonts.alegreyaSans(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5.sp,
      color: Colors.black),
);
