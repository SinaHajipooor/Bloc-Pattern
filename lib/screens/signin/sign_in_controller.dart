import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/screens/signin/bloc/sign_in_blocs.dart';

class SignInController {
  //feilds
  final BuildContext context;
  // contructor
  const SignInController({required this.context});
// methods
  void handleSignIn(String type) {
    try {
      if (type == 'email') {
        //  the following line is just like this line : BlocProvider.of<SignInBloc>(context).state
        final state = context.read<SignInBloc>().state;
      }
    } catch (err) {}
  }
}
