import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/colors.dart';
import 'package:flutter_responsive/utils/screen_util.dart';
import 'package:flutter_responsive/utils/text_styles.dart';

class AppButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final String text;
  final BorderRadius _borderRadius = BorderRadius.all(
    Radius.circular(Constant.sizeSmall),
  );

  final bool enabled;

  AppButton({
    @required this.onTap,
    @required this.text,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      onTap: enabled ? onTap : () {},
      child: Container(
        padding: EdgeInsets.all(Constant.sizeMedium),
        child: Center(
          child: Text(
            text,
            style: TextStyles.buttonText,
          ),
        ),
        decoration: BoxDecoration(
          color: enabled ? AppColors.primary : Colors.grey,
          borderRadius: _borderRadius,
        ),
      ),
    );
  }
}
