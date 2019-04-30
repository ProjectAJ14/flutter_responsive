import 'package:flutter/material.dart';
import 'package:flutter_responsive/components/app_button.dart';
import 'package:flutter_responsive/components/custom_text_field.dart';
import 'package:flutter_responsive/components/login_component.dart';
import 'package:flutter_responsive/components/logo_widget.dart';
import 'package:flutter_responsive/utils/colors.dart';
import 'package:flutter_responsive/utils/screen_util.dart';
import 'package:flutter_responsive/utils/strings.dart';
import 'package:flutter_responsive/utils/text_styles.dart';
import 'package:flutter_responsive/utils/validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalObjectKey<ScaffoldState>('LoginScreen');

  String _email = "";
  String _password = "";

  bool _screenUtilActive = true;

  final _loginFormKey = GlobalKey<FormState>();

  FocusNode _emailFocusNode;
  FocusNode _passwordFocusNode;

  @override
  void initState() {
    super.initState();
    _emailFocusNode = new FocusNode();
    _passwordFocusNode = new FocusNode();
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  setScreenSize() {
    if (!_screenUtilActive)
      Constant.setScreenAwareConstant(context);
    else
      Constant.setDefaultSize(context);
    setState(() {
      _screenUtilActive = !_screenUtilActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Form(
          key: _loginFormKey,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              BackgroundImageWidget(
                color: AppColors.primary,
              ),
              ListView(
                children: <Widget>[
                  Center(
                    child: AppLogoWidget(
                      margin: EdgeInsets.only(top: Constant.sizeXXXL),
                      padding: Constant.spacingAllSmall,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Constant.screenWidthTenth),
                    child: Text(
                      AppStrings.appName,
                      style: TextStyles.appName,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: Constant.sizeMedium,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: Constant.sizeExtraSmall, horizontal: Constant.screenWidthTenth),
                    child: Text(
                      AppStrings.loginTitle,
                      style: TextStyles.loginTitle,
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: Constant.sizeExtraSmall, horizontal: Constant.screenWidthTenth),
                    child: Text(
                      AppStrings.loginSubTitle,
                      style: TextStyles.loginSubTitle,
                    ),
                  ),
                  Container(
                    height: Constant.sizeMedium,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.screenWidthTenth,
                    ),
                    child: AppTextFormField(
                      focusNode: _emailFocusNode,
                      hintText: AppLabels.email,
                      validator: FieldValidator.validateEmail,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      icon: Icons.email,
                      onSaved: (value) => _email = value.trim(),
                      onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_passwordFocusNode),
                    ),
                  ),
                  Container(
                    height: Constant.sizeLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.screenWidthTenth,
                    ),
                    child: AppTextFormField(
                      focusNode: _passwordFocusNode,
                      hintText: AppLabels.password,
                      validator: FieldValidator.validatePassword,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      icon: Icons.lock,
                      obscureText: true,
                      onSaved: (value) => _password = value.trim(),
                      onFieldSubmitted: (_) => setScreenSize(),
                    ),
                  ),
                  Container(
                    height: Constant.sizeLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Constant.screenWidthTenth,
                    ),
                    child: AppButton(
                      onTap: () => setScreenSize(),
                      text: AppLabels.Login,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: Constant.screenWidthFifth),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IndicatorWidget(
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
