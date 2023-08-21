import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/common/values/colors.dart';

AppBar buildSigninAppBar() {
  return AppBar(
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: AppColors.primarySecondaryBackground,
        height: 1,
      ),
    ),
    title: Text(
      'Log in',
      style: TextStyle(color: AppColors.primaryText, fontSize: 16.sp),
    ),
  );
}
