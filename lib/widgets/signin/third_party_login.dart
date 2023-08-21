import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/widgets/signin/reusable_icon.dart';

// we need context to access the bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.h, bottom: 20.h),
    padding: EdgeInsets.only(left: 25.w, right: 25.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        reusableIcon('google'),
        reusableIcon('apple'),
        reusableIcon('facebook'),
      ],
    ),
  );
}
