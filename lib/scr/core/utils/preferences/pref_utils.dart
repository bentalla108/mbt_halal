// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
//ignore: unused_import
import 'package:flutter/scheduler.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;
  PrefUtils() {
    SharedPreferences.getInstance().then((value) => _sharedPreferences = value);
  }

// check if is initializing
  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  Future<void> clearPreferencesData() async {
    await _sharedPreferences!.clear();
  }

  Future<void> saveIsFirstTimer(bool? value) async {
    await _sharedPreferences!.setBool('first_timer', value!);
  }

  bool? getIsFirstTimer() {
    return _sharedPreferences!.getBool('first_timer');
  }

  static void udSet(dynamic data, String key) {
    var jsonStr = json.encode(data);
    _sharedPreferences?.setString(key, jsonStr);
  }

  static void udStringSet(String data, String key) {
    _sharedPreferences?.setString(key, data);
  }

  static void udBoolSet(bool data, String key) {
    _sharedPreferences?.setBool(key, data);
  }

  static void udIntSet(int data, String key) {
    _sharedPreferences?.setInt(key, data);
  }

  static void udDoubleSet(double data, String key) {
    _sharedPreferences?.setDouble(key, data);
  }

  static dynamic udValue(String key) {
    return json.decode(_sharedPreferences?.get(key) as String? ?? "{}");
  }

  static String udValueString(String key) {
    return _sharedPreferences?.get(key) as String? ?? "";
  }

  static bool udValueBool(String key) {
    return _sharedPreferences?.get(key) as bool? ?? false;
  }

  static bool udValueTrueBool(String key) {
    return _sharedPreferences?.get(key) as bool? ?? true;
  }

  static int udValueInt(String key) {
    return _sharedPreferences?.get(key) as int? ?? 0;
  }

  static double udValueDouble(String key) {
    return _sharedPreferences?.get(key) as double? ?? 0.0;
  }

  static void udRemove(String key) {
    _sharedPreferences?.remove(key);
  }

  static SharedPreferences? get sharedPreferences => _sharedPreferences;
}
