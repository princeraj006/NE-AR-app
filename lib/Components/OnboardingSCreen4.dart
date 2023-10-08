import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnboardingScreen4 extends StatefulWidget {
  const OnboardingScreen4({super.key});

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset("assets/arview.png"),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
            child: Text(
              'SOCIAL MEDIA',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
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
              "Share the NEED OF THE HOUR, spread the word – let's go viral with the E certificate – the digital proof of your success!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
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
