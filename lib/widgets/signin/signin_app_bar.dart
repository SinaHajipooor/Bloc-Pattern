import 'package:bloc_pattern/app/imports/app_imports.dart';

AppBar buildSigninAppBar() {
  return AppBar(
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
  );
}
