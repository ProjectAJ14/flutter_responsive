import 'package:flutter/material.dart';
import 'package:flutter_responsive/components/app_button.dart';
import 'package:flutter_responsive/components/custom_text_field.dart';
import 'package:flutter_responsive/components/login_component.dart';
import 'package:flutter_responsive/components/logo_widget.dart';
import 'package:flutter_responsive/utils/colors.dart';
import 'package:flutter_responsive/utils/logs.dart';
import 'package:flutter_responsive/utils/methods.dart';
import 'package:flutter_responsive/utils/sizes.dart';
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

  final _formKey = GlobalKey<FormState>();

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

  _login() {
    if (!isFormValid(_formKey)) return;
    setFocus(context);
    appLogs('_email : $_email');
    appLogs('_password : $_password');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Form(
          key: _formKey,
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
                      margin: EdgeInsets.only(top: Sizes.s100),
                      padding: Sizes.spacingAllSmall,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.s40),
                    child: Text(
                      AppStrings.appName,
                      style: TextStyles.appName,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: Sizes.s20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: Sizes.s5, horizontal: Sizes.s40),
                    child: Text(
                      AppStrings.loginTitle,
                      style: TextStyles.loginTitle,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: Sizes.s10, horizontal: Sizes.s40),
                    child: Text(
                      AppStrings.loginSubTitle,
                      style: TextStyles.loginSubTitle,
                    ),
                  ),
                  Container(
                    height: Sizes.s20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.s40,
                    ),
                    child: AppTextFormField(
                      focusNode: _emailFocusNode,
                      hintText: AppLabels.email,
                      validator: FieldValidator.validateEmail,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      icon: Icons.email,
                      onSaved: (value) => _email = value.trim(),
                      onFieldSubmitted: (_) => setFocus(context, focusNode: _passwordFocusNode),
                    ),
                  ),
                  Container(
                    height: Sizes.s40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.s40,
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
                      onFieldSubmitted: (_) => _login(),
                    ),
                  ),
                  Container(
                    height: Sizes.s40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.s40,
                    ),
                    child: AppButton(
                      onTap: _login,
                      text: AppLabels.Login,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: Sizes.s50),
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
