import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/widgets/signin/forgot_password.dart';
import 'package:bloc_pattern/widgets/signin/login_and_reg_button.dart';
import 'package:bloc_pattern/widgets/signin/reusable_text.dart';
import 'package:bloc_pattern/widgets/signin/signin_app_bar.dart';
import 'package:bloc_pattern/widgets/signin/text_feild.dart';
import 'package:bloc_pattern/widgets/signin/third_party_login.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  static const routeName = '/signin-screen';
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildSigninAppBar(),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(child: reusableText('Or use your email account to login')),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText('Email'),
                      SizedBox(height: 5.h),
                      buildTextFeild('Enter your email address', 'email', 'user'),
                      reusableText('Password'),
                      SizedBox(height: 5.h),
                      buildTextFeild('Enter your password', 'password', 'lock'),
                      forgotPassword(),
                      buildLoginAndRegButton('Log in', 'login'),
                      buildLoginAndRegButton('Register', 'register'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
