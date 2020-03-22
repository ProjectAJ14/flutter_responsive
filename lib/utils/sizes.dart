import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/logs.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double defaultScreenWidth = 400.0;
double defaultScreenHeight = 810.0;
double screenWidth = defaultScreenWidth;
double screenHeight = defaultScreenHeight;

class Sizes {
  static double s0 = 0.0;
  static double s1 = 1.0;
  static double s2 = 2.0;
  static double s3 = 3.0;
  static double s4 = 4.0;
  static double s5 = 5.0;
  static double s6 = 6.0;
  static double s8 = 8.0;
  static double s10 = 10.0;
  static double s12 = 12.0;
  static double s14 = 14.0;
  static double s15 = 15.0;
  static double s16 = 16.0;
  static double s18 = 18.0;
  static double s20 = 20.0;
  static double s25 = 25.0;
  static double s30 = 30.0;
  static double s40 = 40.0;
  static double s50 = 50.0;
  static double s60 = 60.0;
  static double s70 = 70.0;
  static double s80 = 80.0;
  static double s100 = 100.0;
  static double s120 = 120.0;
  static double s150 = 150.0;
  static double s165 = 165.0;
  static double s200 = 200.0;
  static double s300 = 300.0;

  /*Image Dimensions*/

  static double defaultIconSize = 25.0;
  static double defaultImageHeight = 100.0;
  static double defaultCardHeight = 120.0;
  static double defaultImageRadius = 40.0;
  static double snackBarHeight = 50.0;
  static double texIconSize = 30.0;
  static double circularImageRadius = 36.0;

  /*Default Height&Width*/
  static double defaultIndicatorHeight = 5.0;
  static double alertHeight = 200.0;
  static double appBarHeight = 235.0;
  static double minWidthAlertButton = 70.0;

  /*EdgeInsets*/
  static EdgeInsets spacingAllDefault = EdgeInsets.all(s8);
  static EdgeInsets spacingAllSmall = EdgeInsets.all(s10);
  static EdgeInsets spacingAllExtraSmall = EdgeInsets.all(s10);

  static Future setScreenAwareConstant(context) async {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    getSize() async {
      if (screenWidth == 0 || screenHeight == 0) {
        screenWidth = MediaQuery.of(context).size.width;
        screenHeight = MediaQuery.of(context).size.height;
        await Future.delayed(Duration(milliseconds: 300));
        await getSize();
      }
    }

    await getSize();

    appLogs('screenWidth: $screenWidth');
    appLogs('screenHeight: $screenHeight');

    if (screenWidth > 300 && screenWidth < 500) {
      defaultScreenWidth = 450.0;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else if (screenWidth > 500 && screenWidth < 600) {
      defaultScreenWidth = 500.0;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else if (screenWidth > 600 && screenWidth < 700) {
      defaultScreenWidth = 550.0;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else if (screenWidth > 700 && screenWidth < 1050) {
      defaultScreenWidth = 800.0;
      defaultScreenHeight = defaultScreenWidth * screenHeight / screenWidth;
    } else {
      defaultScreenWidth = screenWidth;
      defaultScreenHeight = screenHeight;
    }

    print('''
    ========Device Screen Details===============
    screenWidth: $screenWidth
    screenHeight: $screenHeight
    
    defaultScreenWidth: $defaultScreenWidth
    defaultScreenHeight: $defaultScreenHeight
    ''');

    ScreenUtil.init(
      context,
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    );

    FontSize.setScreenAwareFontSize();

    /*Padding & Margin Constants*/

    s1 = ScreenUtil().setWidth(1.0);
    s2 = ScreenUtil().setWidth(2.0);
    s3 = ScreenUtil().setWidth(3.0);
    s4 = ScreenUtil().setWidth(4.0);
    s5 = ScreenUtil().setWidth(5.0);
    s6 = ScreenUtil().setWidth(6.0);
    s8 = ScreenUtil().setWidth(8.0);
    s10 = ScreenUtil().setWidth(10.0);
    s12 = ScreenUtil().setWidth(12.0);
    s14 = ScreenUtil().setWidth(14.0);
    s15 = ScreenUtil().setWidth(15.0);
    s16 = ScreenUtil().setWidth(16.0);
    s18 = ScreenUtil().setWidth(18.0);
    s20 = ScreenUtil().setWidth(20.0);
    s25 = ScreenUtil().setWidth(25.0);
    s30 = ScreenUtil().setWidth(30.0);
    s40 = ScreenUtil().setWidth(40.0);
    s50 = ScreenUtil().setWidth(50.0);
    s60 = ScreenUtil().setWidth(60.0);
    s70 = ScreenUtil().setWidth(70.0);
    s80 = ScreenUtil().setWidth(80.0);
    s100 = ScreenUtil().setWidth(100.0);
    s120 = ScreenUtil().setWidth(120.0);
    s150 = ScreenUtil().setWidth(150.0);
    s165 = ScreenUtil().setWidth(165.0);
    s200 = ScreenUtil().setWidth(200.0);
    s300 = ScreenUtil().setWidth(300.0);

    /*EdgeInsets*/

    spacingAllDefault = EdgeInsets.all(s8);
    spacingAllSmall = EdgeInsets.all(s10);
    spacingAllExtraSmall = EdgeInsets.all(s10);

    /*Image Dimensions*/

    defaultIconSize = ScreenUtil().setWidth(25.0);
    defaultImageHeight = ScreenUtil().setWidth(100.0);
    defaultCardHeight = ScreenUtil().setWidth(120.0);
    defaultImageRadius = ScreenUtil().setWidth(40.0);
    snackBarHeight = ScreenUtil().setWidth(50.0);
    texIconSize = ScreenUtil().setWidth(30.0);
    circularImageRadius = ScreenUtil().setWidth(36.0);
    appBarHeight = ScreenUtil().setWidth(235.0);

    /*Default Height&Width*/
    defaultIndicatorHeight = ScreenUtil().setHeight(5.0);
    alertHeight = ScreenUtil().setWidth(200.0);
    minWidthAlertButton = ScreenUtil().setWidth(70.0);
  }
}

class FontSize {
  static double s7 = 7.0;
  static double s8 = 8.0;
  static double s9 = 9.0;
  static double s10 = 10.0;
  static double s11 = 11.0;
  static double s12 = 12.0;
  static double s13 = 13.0;
  static double s14 = 14.0;
  static double s15 = 15.0;
  static double s16 = 16.0;
  static double s17 = 17.0;
  static double s18 = 18.0;
  static double s19 = 19.0;
  static double s20 = 20.0;
  static double s21 = 21.0;
  static double s22 = 22.0;
  static double s23 = 23.0;
  static double s24 = 24.0;
  static double s25 = 25.0;
  static double s26 = 26.0;
  static double s27 = 27.0;
  static double s28 = 28.0;
  static double s29 = 29.0;
  static double s30 = 30.0;
  static double s36 = 36.0;

  static setDefaultFontSize() {
    s7 = 7.0;
    s8 = 8.0;
    s9 = 9.0;
    s10 = 10.0;
    s11 = 11.0;
    s12 = 12.0;
    s13 = 13.0;
    s14 = 14.0;
    s15 = 15.0;
    s16 = 16.0;
    s17 = 17.0;
    s18 = 18.0;
    s19 = 19.0;
    s20 = 20.0;
    s21 = 21.0;
    s22 = 22.0;
    s23 = 23.0;
    s24 = 24.0;
    s25 = 25.0;
    s26 = 26.0;
    s27 = 27.0;
    s28 = 28.0;
    s29 = 29.0;
    s30 = 30.0;
    s36 = 36.0;
  }

  static setScreenAwareFontSize() {
    s7 = ScreenUtil().setSp(7.0);
    s8 = ScreenUtil().setSp(8.0);
    s9 = ScreenUtil().setSp(9.0);
    s10 = ScreenUtil().setSp(10.0);
    s11 = ScreenUtil().setSp(11.0);
    s12 = ScreenUtil().setSp(12.0);
    s13 = ScreenUtil().setSp(13.0);
    s14 = ScreenUtil().setSp(14.0);
    s15 = ScreenUtil().setSp(15.0);
    s16 = ScreenUtil().setSp(16.0);
    s17 = ScreenUtil().setSp(17.0);
    s18 = ScreenUtil().setSp(18.0);
    s19 = ScreenUtil().setSp(19.0);
    s20 = ScreenUtil().setSp(20.0);
    s21 = ScreenUtil().setSp(21.0);
    s22 = ScreenUtil().setSp(22.0);
    s23 = ScreenUtil().setSp(23.0);
    s24 = ScreenUtil().setSp(24.0);
    s25 = ScreenUtil().setSp(25.0);
    s26 = ScreenUtil().setSp(26.0);
    s27 = ScreenUtil().setSp(27.0);
    s28 = ScreenUtil().setSp(28.0);
    s29 = ScreenUtil().setSp(29.0);
    s30 = ScreenUtil().setSp(30.0);
    s36 = ScreenUtil().setSp(36.0);
  }
}
