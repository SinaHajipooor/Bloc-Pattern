import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/imports/app_imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(builder: (context, child) => const HomeScreen()),
    );
  }
}
