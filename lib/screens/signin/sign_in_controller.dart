import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/screens/signin/bloc/sign_in_blocs.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInController {
  //feilds
  final BuildContext context;
  // contructor
  const SignInController({required this.context});
// methods
  void handleSignIn(String type) async {
    try {
      if (type == 'email') {
        //  the following line is just like this line : BlocProvider.of<SignInBloc>(context).state
        final state = context.read<SignInBloc>().state;
        String emailAddress = state.email;
        String password = state.password;
        // validation
        if (emailAddress.isEmpty || password.isEmpty) return;
        //  get the credential from firebase
        final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailAddress, password: password);
        if (credential.user == null) {}
        if (!credential.user!.emailVerified) {}
        // create the user
        var user = credential.user;
        if (user != null) {
          // we got verified user from firebase
        } else {
          // we have error getting user from firebase
        }
      }
    } catch (err) {}
  }
}
