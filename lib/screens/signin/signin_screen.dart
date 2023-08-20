import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/widgets/signin/signin_app_bar.dart';
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
              children: [
                buildThirdPartyLogin(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
