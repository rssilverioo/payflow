import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        theme: ThemeData(
            primarySwatch: Colors.orange, primaryColor: AppColors.primary),
        initialRoute: "/splash",
        routes: {
          "/splash": (context) => SplashPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
          "/barcode_scanner": (context) => BarcodeScannerPage(),
        });
  }
}
