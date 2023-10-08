import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
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
            child: Image.asset("assets/globalview.png"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              'GLOBAL VIEW',
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
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              'Embrace a world of  possibilities via Unity in Diversity through \n our global view.',
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
