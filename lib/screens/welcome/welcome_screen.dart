import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 375.w,
          child: Stack(
            children: [
              PageView(
                children: [
                  Column(
                    children: [
                      SizedBox(width: 345.w, height: 345.w, child: const Text('Image one')),
                      Container(
                        child: Text('First see Learning', style: TextStyle(color: Colors.black, fontSize: 24.sp)),
                      ),
                      Container(
                        child: Text('Forgot about a for of paper all knowledge in one learning ! ', style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 14.sp)),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
