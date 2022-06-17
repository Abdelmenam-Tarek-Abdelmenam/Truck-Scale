import 'package:flutter/material.dart';
import 'package:truck_scale/presentation/resources/string_manager.dart';

enum LanguageMode { system, en, ar }

extension GetLangText on LanguageMode {
  String get text {
    switch (this) {
      case LanguageMode.en:
        return StringManger.en;
      case LanguageMode.ar:
        return StringManger.ar;
      case LanguageMode.system:
        return StringManger.system;
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
