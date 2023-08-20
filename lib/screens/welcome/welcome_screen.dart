import 'package:bloc_pattern/app/imports/app_imports.dart';
import 'package:bloc_pattern/screens/welcome/bloc/welcome_events.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'bloc/welcome_states.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = '/welcome-screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // a controller to navigate between pages
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        body: BlocBuilder<WelcomeBlock, WelcomeState>(
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(top: 34.h),
              width: 375.w,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      state.page = index;
                      BlocProvider.of<WelcomeBlock>(context).add(WelcomeEvent());
                    },
                    physics: const BouncingScrollPhysics(),
                    children: [
                      _page(1, context, 'next', 'First see Learning', 'Forget about a for of paper all knowldget in on learning', 'assets/images/reading.png'),
                      _page(2, context, 'next', 'Connect with everyone ', 'Always keep in touch with your tutor & friend Lets get connected', 'assets/images/boy.png'),
                      _page(3, context, 'Get started', 'Always Facinated Learning', 'Anywhere anytime . The time is at our discrition so study whenever you want', 'assets/images/man.png'),
                    ],
                  ),
                  Positioned(
                    bottom: 100.h,
                    child: DotsIndicator(
                      position: state.page,
                      dotsCount: 3,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        size: const Size.square(8),
                        activeSize: const Size(18, 8),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _page(int index, BuildContext context, String buttonName, String title, String subtitle, String imagepath) {
    return Column(
      children: [
        SizedBox(width: 345.w, height: 345.w, child: Image.asset(imagepath, fit: BoxFit.cover)),
        SizedBox(
          child: Text(title, style: TextStyle(color: Colors.black, fontSize: 24.sp)),
        ),
        Container(
          width: 375.w,
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Text(subtitle, style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 14.sp)),
        ),
        GestureDetector(
          onTap: () {
            if (index < 3) {
              pageController.animateToPage(index, duration: const Duration(milliseconds: 700), curve: Curves.easeIn);
            } else {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            }
          },
          child: Container(
            margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 1, blurRadius: 2, offset: const Offset(0, 1)),
              ],
            ),
            child: Center(child: Text(buttonName, style: TextStyle(color: Colors.white, fontSize: 16.sp))),
          ),
        )
      ],
    );
  }
}
