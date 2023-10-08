import 'dart:async';

import 'package:agriguru/screens/OnboardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Onboarding()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(children: [
          const Expanded(flex: 2, child: SizedBox()),
          const Image(
            image: AssetImage('assets/logo.png'),
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              'NATURALIST EXPLORER\nAUGMENTED REALITY',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
                letterSpacing: 3.96,
              ),
            ),
          ),
          const Expanded(flex: 1, child: SizedBox()),
          const Image(
            image: AssetImage('assets/planet.png'),
            fit: BoxFit.cover,
          )
        ]),
      ),
    );
  }
}
