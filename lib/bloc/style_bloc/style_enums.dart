import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';

enum LanguageMode { en, ar }

extension GetLangText on LanguageMode {
  String get text {
    switch (this) {
      case LanguageMode.en:
        return StringManger.en;
      case LanguageMode.ar:
        return StringManger.ar;
    }
  }

  TextDirection get textDirection {
    switch (this) {
      case LanguageMode.en:
        return TextDirection.ltr;
      case LanguageMode.ar:
        return TextDirection.rtl;
    }
  }

  Locale get locale {
    switch (this) {
      case LanguageMode.en:
        return const Locale("en", "");
      case LanguageMode.ar:
        return const Locale("ar", "");
    }
  }
}

extension GetThemeText on ThemeMode {
  String get text {
    switch (this) {
      case ThemeMode.system:
        return StringManger.system;
      case ThemeMode.light:
        return StringManger.light;
      case ThemeMode.dark:
        return StringManger.dark;
    }
  }
}
