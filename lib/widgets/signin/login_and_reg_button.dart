import 'package:bloc_pattern/app/imports/app_imports.dart';

Widget buildLoginAndRegButton(String buttonName, String buttonType) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(left: 25.w, right: 25.w, top: buttonType == 'login' ? 40.h : 20.h),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15.w),
        boxShadow: [
          BoxShadow(spreadRadius: 1, blurRadius: 2, offset: const Offset(0, 1), color: Colors.grey.withOpacity(0.1)),
        ],
      ),
      child: Center(
          child: Text(
        buttonName,
        style: TextStyle(fontSize: 16.sp, color: Colors.white),
      )),
    ),
  );
}
