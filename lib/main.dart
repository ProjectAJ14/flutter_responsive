import 'package:flutter/material.dart';
import 'package:flutter_responsive/screens/splash_screen.dart';
import 'package:flutter_responsive/utils/colors.dart';

void main() => runApp(MyApp());

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
