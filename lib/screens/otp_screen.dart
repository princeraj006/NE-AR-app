import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../constants.dart';
import '../helpers.dart';
import '../widgets/button.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  image: const AssetImage("assets/EXPLORE1.jpeg"),
                  fit: BoxFit.cover)),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 20.h,
                  width: 100.w,
                  color: Colors.transparent,
                ),
                Expanded(
                    child: Container(
                  width: 100.w,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(0, 247, 255, 247),
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.0))),
                  child: Column(children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 1.h),
                        width: 90.w,
                        child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                                text: 'Sign Up \n',
                                style: TextStyle(
                                  fontSize: 24.sp,
                                  color: hexToColor(appRootColor),
                                  fontFamily: 'Roboto',
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.w900,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text:
                                        'to take deep dive into AR to witness\nthe climate change thats shapes our world.',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ]))),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Add your Phone Number. We will send you an \nverification code so we know you are real.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.5.sp,
                        color: Colors.grey.shade500,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Button(
                        onTap: () {},
                        borderRadius: 15,
                        boxColor: hexToColor(appRootColor),
                        text: 'Sign Up',
                        textColor: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 1.h),
                        width: 90.w,
                        child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(
                                text:
                                    'By providing my Phone Number, I herebyagree and \naccept the ',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey.shade700,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'Terms of Service',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: hexToColor(appRootColor),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.grey.shade700,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Privacy Policy ',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: hexToColor(appRootColor),
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'in use \nof Agri Grow App.',
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Colors.grey.shade700,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ]))),
                  ]),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
