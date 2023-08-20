import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/widgets/signin/reusable_icon.dart';

// we need context to access the bloc
Widget buildThirdPartyLogin(BuildContext context) {
  return SizedBox(
    child: Row(
      children: [
        reusableIcon('google'),
        reusableIcon('apple'),
      ],
    ),
  );
}
