import 'package:flutter/material.dart';
import 'package:flutter_responsive/screens/splash_screen.dart';
import 'package:flutter_responsive/utils/colors.dart';
import 'package:ns_utils/src.dart';
import 'package:ns_utils/widgets/custom_error_widget.dart';

void main() {
  //<editor-fold desc="Override ErrorWidget">
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return CustomErrorWidget(
      errorDetails: errorDetails,
      logoAsset: '<Your app logo asset>',
      showErrorDetails: true, //this should be set to false in production
      onRestart: (BuildContext context) {
        context.makeFirst(SplashScreen());
      },
    );
  };
  //</editor-fold>

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(primaryColor: AppColors.primary),
    );
  }
}
