import 'package:agriguru/constants.dart';
import 'package:agriguru/helpers.dart';
import 'package:agriguru/providers/loginpage_provider.dart';
import 'package:agriguru/screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/button.dart';
import '../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneNumberController = TextEditingController();
  final otpFieldController = OtpFieldController();
  final LoginScreenController _loginPageController =
      Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 20.h,
                  width: 100.w,
                  color: Colors.transparent,
                ),
                const Expanded(child: SizedBox()),
                Obx(() {
                  return Visibility(
                    visible: !_loginPageController.isOtpScreenVisible.value,
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: 15.h,
                      ),
                      width: 100.w,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0))),
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
                                      color: hexToColor(bluePrimaryColor),
                                      fontFamily: 'Roboto',
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w900,
                                    ),
                                    children: <InlineSpan>[
                                      TextSpan(
                                        text:
                                            "to Dive into AR,explore Earth,and witness climate change's profound impact",
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
                            fontSize: 16.sp,
                            color: Colors.grey.shade500,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 1.w,
                            ),
                            Expanded(
                              child: FormFieldContainer(
                                hintText: "Enter your Phone Number",
                                borderColor: const Color.fromARGB(255, 0, 0, 0),
                                boxColor:
                                    const Color.fromARGB(0, 238, 238, 238),
                                textColor: Colors.black.withOpacity(0.5),
                                textInputType: TextInputType.phone,
                                onTap: () {},
                                controller: phoneNumberController,
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      phoneNumberController.text = "";
                                    },
                                    child: Container(
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        margin: EdgeInsets.all(2.2.w),
                                        child: const Icon(
                                          Icons.close,
                                          color:
                                              Color.fromARGB(255, 52, 52, 52),
                                        ))),
                                prefixIcon: null,
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Button(
                            onTap: () {
                              _loginPageController.changeScreen();
                            },
                            borderRadius: 15,
                            boxColor: hexToColor(bluePrimaryColor),
                            text: 'Send OTP',
                            textColor: Colors.white,
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
                                        'By providing my Phone Number, I hereby agree and \naccept the ',
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
                                          color: hexToColor(bluePrimaryColor),
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
                                          color: hexToColor(bluePrimaryColor),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'in use \nof NE-AR App.',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Colors.grey.shade700,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ]))),
                      ]),
                    ),
                  );
                }),
                Obx(() {
                  return Visibility(
                    visible: _loginPageController.isOtpScreenVisible.value,
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: 15.h,
                      ),
                      width: 100.w,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(0, 247, 255, 247),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0))),
                      child: Column(children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        const Row(
                          children: [
                            // GestureDetector(
                            //     onTap: () {
                            //       _loginPageController.changeScreen();
                            //     },
                            //     child: Container(
                            //         decoration: const BoxDecoration(
                            //           shape: BoxShape.circle,
                            //         ),
                            //         margin: EdgeInsets.all(2.2.w),
                            //         child: const Icon(
                            //           Icons.arrow_back_ios_new_rounded,
                            //           color: Colors.black,
                            //         ))),
                          ],
                        ),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 1.h),
                            width: 90.w,
                            child: Text(
                              "Verify your \nPhone Number ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 23.sp,
                                color: hexToColor(bluePrimaryColor),
                                fontFamily: 'Roboto',
                                letterSpacing: -0.5,
                                fontWeight: FontWeight.w900,
                              ),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Enter your OTP code here.",
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
                        Center(
                          child: OTPTextField(
                              controller: otpFieldController,
                              length: 4,
                              width: MediaQuery.of(context).size.width,
                              textFieldAlignment: MainAxisAlignment.spaceEvenly,
                              fieldWidth: 50,
                              fieldStyle: FieldStyle.box,
                              outlineBorderRadius: 10,
                              style: TextStyle(fontSize: 18.sp),
                              onCompleted: (pin) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Homepage()));
                              }),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          child: Button(
                            onTap: () {},
                            borderRadius: 15,
                            boxColor: hexToColor(bluePrimaryColor),
                            text: 'Sign Up',
                            textColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Didn't you recieve the code?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.5.sp,
                            color: Colors.grey.shade500,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "RESEND CODE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.5.sp,
                              color: hexToColor(bluePrimaryColor),
                              fontFamily: 'Roboto',
                              letterSpacing: 1,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
