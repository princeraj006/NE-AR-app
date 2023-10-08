import 'package:agriguru/Components/OnboardingSCreen4.dart';
import 'package:agriguru/Components/OnboardingScreen1.dart';
import 'package:agriguru/Components/OnboardingScreen2.dart';
import 'package:agriguru/Components/OnboardingScreen3.dart';
import 'package:agriguru/screens/Homepage.dart';
import 'package:agriguru/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../constants.dart';
import '../helpers.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: OnBoardingSlider(
          addController: true,
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          onFinish: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Homepage()))
          },
          finishButtonStyle: FinishButtonStyle(
              backgroundColor: hexToColor(bluePrimaryColor),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)))),
          skipTextButton: const Text('Skip'),
          // trailing: Text('Login'),
          totalPage: 4,
          hasFloatingButton: true,
          indicatorAbove: true,
          indicatorPosition: 100,
          // leading: Text(
          //   "hahaha",
          //   style: TextStyle(color: Colors.white),
          // ),
          addButton: true,
          speed: 1.8,
          pageBackgroundColor: Colors.white,
          controllerColor: hexToColor(bluePrimaryColor),
          pageBodies: const [
            OnboardingScreen1(),
            OnboardingScreen2(),
            OnboardingScreen3(),
            OnboardingScreen4()
          ],
          background: [Container(), Container(), Container(), Container()],
        ),
      ),
    );
  }
}
