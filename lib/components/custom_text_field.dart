import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_responsive/utils/colors.dart';
import 'package:flutter_responsive/utils/text_styles.dart';
import 'package:ns_utils/utils/sizes.dart';

class AppTextFormField extends StatelessWidget {
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final String hintText;
  final String prefixText;
  final IconData icon;
  final String initialValue;
  final int maxLength;
  final TextInputType keyboardType;
  final bool enabled;
  final bool obscureText;
  final TextInputAction textInputAction;
  final FocusNode focusNode;
  final ValueChanged<String> onFieldSubmitted;

  const AppTextFormField({
    Key key,
    this.onSaved,
    this.validator,
    this.hintText = "",
    this.prefixText,
    this.maxLength,
    this.icon,
    this.keyboardType,
    this.enabled = true,
    this.obscureText = false,
    this.initialValue,
    this.focusNode,
    this.onFieldSubmitted,
    this.textInputAction = TextInputAction.done,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.s5))),
      padding: EdgeInsets.all(Sizes.s8),
      child: TextFormField(
        focusNode: focusNode,
        decoration: InputDecoration(
          icon: Icon(
            icon ?? Icons.email,
            size: Sizes.s25,
          ),
          hintText: hintText,
          hintStyle: TextStyles.labelStyle,
          errorStyle: TextStyles.errorStyle,
          prefixText: prefixText,
          errorMaxLines: 1,
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
        ),
//        textAlign: TextAlign.center,
        inputFormatters: (maxLength != null)
            ? obscureText
                ? [
                    LengthLimitingTextInputFormatter(maxLength),
                    WhitelistingTextInputFormatter(RegExp("[0-9]"))
                  ]
                : [LengthLimitingTextInputFormatter(maxLength)]
            : [],
        onSaved: onSaved,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        keyboardType: keyboardType,
        enabled: enabled,
        initialValue: initialValue ?? "",
        textInputAction: textInputAction,
        style: TextStyles.editText,
        obscureText: obscureText,
      ),
    );
  }
}
