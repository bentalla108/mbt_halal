// ignore_for_file: avoid_print

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

  static SharedPreferences? get sharedPreferences => _sharedPreferences;
}
