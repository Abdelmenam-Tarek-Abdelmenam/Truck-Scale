import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceKey {
  static const String themeMode = "themeMode";
  static const String languageMode = "languageMode";
  static const String moneyUnit = "moneyUnit";
  static const String weightUnit = "weightUnit";
  static const String placeName = "placeName";
  static const String placePhone = "placePhone";
  static const String placeAddress = "placeAddress";
}

class PreferenceRepository {
  static late SharedPreferences pref;

  static init() async {
    pref = await SharedPreferences.getInstance();
  }

  static void putData({
    required dynamic value,
    required String key,
  }) {
    if (value is String) {
      pref.setString(key, value);
    } else if (value is int) {
      pref.setInt(key, value);
    } else if (value is bool) {
      pref.setBool(key, value);
    } else if (value is double) {
      pref.setDouble(key, value);
    } else if (value is List<String>) {
      pref.setStringList(key, value);
    } else if (value is Map) {
      pref.setString(key, json.encode(value));
    }
  }

  static dynamic getData({
    required String key,
  }) {
    return pref.get(key);
  }

  static void clearData({
    required String key,
  }) {
    pref.remove(key);
  }

  static void clearAll() {
    pref.clear();
  }
}
