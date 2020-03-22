import 'package:flutter/material.dart';
import 'package:flutter_responsive/utils/logs.dart';

setFocus(BuildContext context, {FocusNode focusNode}) {
  FocusScope.of(context).requestFocus(focusNode ?? FocusNode());
}

bool isFormValid(key) {
  final form = key.currentState;
  if (form.validate()) {
    form.save();
    appLogs('$key isFormValid:true');
    return true;
  }
  appLogs('$key isFormValid:false');
  return false;
}
