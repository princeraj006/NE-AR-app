import 'package:agriguru/helpers.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/mapglobe.png",
              fit: BoxFit.cover,
            ),
          ),
          DraggableScrollableSheet(
              expand: true,
              initialChildSize: 0.2,
              minChildSize: 0.2,
              maxChildSize: 0.2,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: hexToColor('#4725F3'),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(children: [
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Image.asset("assets/Rectangle.png"),
                      // ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 1.5.h, horizontal: 5.w),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Suggestions ',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 2.w),
                              width: 80.w,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: "Type in your text",
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                            Image.asset("assets/Voice.png")
                          ],
                        ),
                      )
                    ]),
                  ),
                );
              }),
        ],
      )),
    );
  }
}
