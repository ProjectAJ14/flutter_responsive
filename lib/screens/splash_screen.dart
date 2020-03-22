import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/components/login_component.dart';
import 'package:flutter_responsive/components/logo_widget.dart';
import 'package:flutter_responsive/screens/login_screen.dart';
import 'package:flutter_responsive/utils/colors.dart';
import 'package:flutter_responsive/utils/routes.dart';
import 'package:flutter_responsive/utils/sizes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      AppRoutes.makeFirst(context, LoginScreen());
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Sizes.setScreenAwareConstant(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            BackgroundImageWidget(
              color: AppColors.secondary,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: AppLogoWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
