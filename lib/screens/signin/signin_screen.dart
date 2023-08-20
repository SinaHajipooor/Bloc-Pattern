import 'package:bloc_pattern/app/imports/app_imports.dart';
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
          appBar: AppBar(
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: Container(
                color: Colors.grey.withOpacity(0.5),
                height: 1,
              ),
            ),
            title: Text(
              'Log in',
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
