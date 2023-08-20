import 'app/imports/app_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: true, // if we set the lazt to false it means that flutter should create the bloc as soon as possible
          create: (context) => WelcomeBlock(),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          title: 'Selling App',
          debugShowCheckedModeBanner: false,
          routes: appRoutes,
          home: const WelcomeScreen(),
        ),
      ),
    );
  }
}
