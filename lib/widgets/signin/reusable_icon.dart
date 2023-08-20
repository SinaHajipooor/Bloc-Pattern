import '../../app/imports/app_imports.dart';

Widget reusableIcon(String iconName) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      height: 40.w,
      width: 40.w,
      child: Image.asset('assets/icons/$iconName.png'),
    ),
  );
}
