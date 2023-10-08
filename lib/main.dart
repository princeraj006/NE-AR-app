import 'package:agriguru/helpers.dart';
import 'package:agriguru/screens/SplashScreens/splash_screem1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();
  await Permission.microphone.request();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NE-AR',
        theme: ThemeData(
            colorScheme: ColorScheme.light(
                primary: Color(int.parse("#389C9A".substring(1, 7), radix: 16) +
                    0xFF000000)),
            appBarTheme: AppBarTheme(
              color: hexToColor("#00A693"),
            )),
        home: const SplashScreen(),
      );
    });
  }
}
