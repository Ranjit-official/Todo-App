import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:to_dos/common/Assets.dart';

class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({super.key});

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  String _status = "waiting......";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(24),
      child: IntroductionScreen(
        key: _introKey,
        pages: [
          PageViewModel(
            decoration: PageDecoration(
                pageColor: Colors.black,
                titleTextStyle:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 16)), //page color blacks
            title: 'Manage your tasks',

            body:
                "You can easily manage all of your daily tasks in DoMe for free",
            image: Image.asset(Assets.onBoarding1),
          ),
          PageViewModel(
            image: Image.asset(Assets.onBoarding2),
            title: 'Create daily routine',
            body:
                "In Uptodo  you can create your personalized routine to stay productive",
            decoration: PageDecoration(
                pageColor: Colors.black,
                titleTextStyle:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 16)),
          ), //pae color blacks)
          PageViewModel(
            image: Image.asset(Assets.onBoarding3),
            title: 'Orgonaize your tasks',
            body:
                "You can organize your daily tasks by adding your tasks into separate categories",
            decoration: PageDecoration(
                pageColor: Colors.black,
                titleTextStyle:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 16)),
          ), //pae color blacks)
        ],
        showNextButton: false,
        showDoneButton: false,
      ),
    );
  }
}
