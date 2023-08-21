import 'package:bloc_pattern/app/imports/app_imports.dart';

Widget forgotPassword() {
  return Container(
    margin: EdgeInsets.only(left: 25.w),
    width: 260.w,
    height: 44.h,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        'Forgot password',
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          fontSize: 12.sp,
          decorationColor: Colors.blue,
        ),
      ),
    ),
  );
}
