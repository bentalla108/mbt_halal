import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:mbt_halal/route.dart';
import 'package:mbt_halal/scr/core/app_export.dart';
import 'package:mbt_halal/scr/core/utils/themes/theme.dart';
import 'package:mbt_halal/scr/screens/start/screen/splash_screen.dart';

import 'scr/core/bindings/general_binding.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          routes: routes,
          initialRoute: SplashScreen.routeName,
          initialBinding: GeneralBindings(),
          theme: BAppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return FlutterEasyLoading(child: child);
          });
    });
  }
}
