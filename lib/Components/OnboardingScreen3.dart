import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingScreen3 extends StatefulWidget {
  const OnboardingScreen3({super.key});

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset("assets/courseview.png"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              'COURSE & NEWS',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.sp,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                // height: 0.03,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w),
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              'Got the key to knowledge? Time to unlock your brain. Stay informed, stay ahead - with latest and recent NEWS and Updates.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                  letterSpacing: 1.2),
            ),
          )
        ]),
      ),
    );
  }
}
