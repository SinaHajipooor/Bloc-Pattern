
import '../imports/app_imports.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomeScreen.routeName: (ctx) => const HomeScreen(),
  SigninScreen.routeName : (ctx) => const SigninScreen(),
};
