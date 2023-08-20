import '../../app/imports/app_imports.dart';

Widget reusableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: TextStyle(color: Colors.grey.withOpacity(0.5), fontSize: 14.sp),
    ),
  );
}
