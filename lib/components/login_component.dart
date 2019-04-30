import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/screen_util.dart';

class BackgroundImageWidget extends StatelessWidget {
  final String image;
  final Color color;
  final Widget child;

  const BackgroundImageWidget({
    Key key,
    this.image,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(image ?? "assets/background.jpg"),
          fit: BoxFit.fill,
          colorFilter: color != null
              ? ColorFilter.mode(
                  color,
                  BlendMode.color,
                )
              : null,
        ),
      ),
      child: child,
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const IndicatorWidget({Key key, this.height, this.width, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Constant.defaultIndicatorHeight,
      width: width ?? Constant.defaultIndicatorWidth,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(height ?? Constant.defaultIndicatorHeight)),
        ),
      ),
    );
  }
}
