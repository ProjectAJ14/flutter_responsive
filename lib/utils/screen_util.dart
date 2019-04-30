import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Size screenSize;
double defaultScreenWidth = 400.0;
double defaultScreenHeight = 810.0;
double screenWidth = defaultScreenWidth;
double screenHeight = defaultScreenHeight;

class Constant {
  /*Padding & Margin Constants*/

  static double sizeExtraSmall = 5.0;
  static double sizeDefault = 8.0;
  static double sizeSmall = 10.0;
  static double sizeMedium = 15.0;
  static double sizeLarge = 20.0;
  static double sizeXL = 30.0;
  static double sizeXXL = 40.0;
  static double sizeXXXL = 50.0;

  /*Screen Size dependent Constants*/
  static double screenWidthHalf = screenWidth / 2;
  static double screenWidthThird = screenWidth / 3;
  static double screenWidthFourth = screenWidth / 4;
  static double screenWidthFifth = screenWidth / 5;
  static double screenWidthSixth = screenWidth / 6;
  static double screenWidthTenth = screenWidth / 10;

  /*Image Dimensions*/

  static double defaultIconSize = 80.0;
  static double defaultImageHeight = 120.0;
  static double snackBarHeight = 50.0;
  static double texIconSize = 30.0;

  /*Default Height&Width*/
  static double defaultIndicatorHeight = 5.0;
  static double defaultIndicatorWidth = screenWidthFourth;

  /*EdgeInsets*/
  static EdgeInsets spacingAllDefault = EdgeInsets.all(sizeDefault);
  static EdgeInsets spacingAllSmall = EdgeInsets.all(sizeSmall);

  static void setDefaultSize(context) {
    screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    sizeLarge = 20.0;
    sizeXL = 30.0;
    sizeXXL = 40.0;
    sizeXXXL = 50.0;

    screenWidthHalf = screenWidth / 2;
    screenWidthThird = screenWidth / 3;
    screenWidthFourth = screenWidth / 4;
    screenWidthFifth = screenWidth / 5;
    screenWidthSixth = screenWidth / 6;
    screenWidthTenth = screenWidth / 10;

    defaultIconSize = 80.0;
    defaultImageHeight = 120.0;
    snackBarHeight = 50.0;
    texIconSize = 30.0;

    defaultIndicatorHeight = 5.0;
    defaultIndicatorWidth = screenWidthFourth;

    spacingAllDefault = EdgeInsets.all(sizeDefault);
    spacingAllSmall = EdgeInsets.all(sizeSmall);

    FontSize.setDefaultFontSize();
  }

  static void setScreenAwareConstant(context) {
    ScreenUtil.instance = ScreenUtil(
      width: defaultScreenWidth,
      height: defaultScreenHeight,
      allowFontScaling: true,
    )..init(context);

    FontSize.setScreenAwareFontSize();

    /*Padding & Margin Constants*/

    sizeExtraSmall = ScreenUtil.instance.setWidth(5.0);
    sizeDefault = ScreenUtil.instance.setWidth(8.0);
    sizeSmall = ScreenUtil.instance.setWidth(10.0);
    sizeMedium = ScreenUtil.instance.setWidth(15.0);
    sizeLarge = ScreenUtil.instance.setWidth(20.0);
    sizeXL = ScreenUtil.instance.setWidth(30.0);
    sizeXXL = ScreenUtil.instance.setWidth(40.0);
    sizeXXXL = ScreenUtil.instance.setWidth(50.0);

    /*EdgeInsets*/

    spacingAllDefault = EdgeInsets.all(sizeDefault);
    spacingAllSmall = EdgeInsets.all(sizeSmall);

    /*Screen Size dependent Constants*/
    screenWidthHalf = ScreenUtil.instance.width / 2;
    screenWidthThird = ScreenUtil.instance.width / 3;
    screenWidthFourth = ScreenUtil.instance.width / 4;
    screenWidthFifth = ScreenUtil.instance.width / 5;
    screenWidthSixth = ScreenUtil.instance.width / 6;
    screenWidthTenth = ScreenUtil.instance.width / 10;

    /*Image Dimensions*/

    defaultIconSize = ScreenUtil.instance.setWidth(80.0);
    defaultImageHeight = ScreenUtil.instance.setHeight(120.0);
    snackBarHeight = ScreenUtil.instance.setHeight(50.0);
    texIconSize = ScreenUtil.instance.setWidth(30.0);

    /*Default Height&Width*/
    defaultIndicatorHeight = ScreenUtil.instance.setHeight(5.0);
    defaultIndicatorWidth = screenWidthFourth;
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
    s7 = ScreenUtil.instance.setSp(7.0);
    s8 = ScreenUtil.instance.setSp(8.0);
    s9 = ScreenUtil.instance.setSp(9.0);
    s10 = ScreenUtil.instance.setSp(10.0);
    s11 = ScreenUtil.instance.setSp(11.0);
    s12 = ScreenUtil.instance.setSp(12.0);
    s13 = ScreenUtil.instance.setSp(13.0);
    s14 = ScreenUtil.instance.setSp(14.0);
    s15 = ScreenUtil.instance.setSp(15.0);
    s16 = ScreenUtil.instance.setSp(16.0);
    s17 = ScreenUtil.instance.setSp(17.0);
    s18 = ScreenUtil.instance.setSp(18.0);
    s19 = ScreenUtil.instance.setSp(19.0);
    s20 = ScreenUtil.instance.setSp(20.0);
    s21 = ScreenUtil.instance.setSp(21.0);
    s22 = ScreenUtil.instance.setSp(22.0);
    s23 = ScreenUtil.instance.setSp(23.0);
    s24 = ScreenUtil.instance.setSp(24.0);
    s25 = ScreenUtil.instance.setSp(25.0);
    s26 = ScreenUtil.instance.setSp(26.0);
    s27 = ScreenUtil.instance.setSp(27.0);
    s28 = ScreenUtil.instance.setSp(28.0);
    s29 = ScreenUtil.instance.setSp(29.0);
    s30 = ScreenUtil.instance.setSp(30.0);
    s36 = ScreenUtil.instance.setSp(36.0);
  }
}
