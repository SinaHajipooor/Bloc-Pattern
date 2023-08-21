import 'package:bloc_pattern/app/imports/app_imports.dart';

Widget buildTextFeild(String text, String textType) {
  return Container(
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.w)),
      border: Border.all(color: Colors.black),
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          height: 16.w,
          margin: EdgeInsets.only(left: 17.w),
          child: Image.asset('assets/icons/user.png'),
        ),
        Container(
          width: 280.w,
          height: 50.h,
        )
      ],
    ),
  );
}
