// import 'package:shared_preferences/shared_preferences.dart';
// //ignore: unused_import
// import 'package:flutter/scheduler.dart';

// class PrefUtils {
//   static SharedPreferences? _sharedPreferences;
//   PrefUtils() {
//     SharedPreferences.getInstance().then((value) => _sharedPreferences = value);
//   }

// // check if is initializing
//   Future<void> init() async {
//     _sharedPreferences ??= await SharedPreferences.getInstance();
//     print('SharedPreference Initialized');
//   }

//   Future<void> clearPreferencesData() async {
//     await _sharedPreferences!.clear();
//   }

//   Future<void> setThemeData(String value) {
//     return _sharedPreferences!.setString('themeData', value);
//   }

//   String getThemeData() {
//     try {
//       return _sharedPreferences!.getString('themeData')!;
//     } catch (e) {
//       return 'primary';
//     }
//   }
// }
