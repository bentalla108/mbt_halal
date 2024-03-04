import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:mtb_halal/scr/core/app_export.dart';

import 'main_app.dart';
import 'scr/core/utils/helpers/logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(const MainApp());
  });
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 5.0
    ..progressColor = BColors.secondary
    ..backgroundColor = BColors.primary
    ..indicatorColor = Colors.yellow
    ..textColor = BColors.secondary
    ..userInteractions = false
    ..dismissOnTap = false;
}
