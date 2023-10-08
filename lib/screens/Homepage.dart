import 'package:agriguru/helpers.dart';
import 'package:agriguru/screens/location.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 30.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: hexToColor('#4725F3'),
            ),
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'NE-AR',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Naturalist Explorer - Augmented Reality',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'WAYS TO\nDISCOVER',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.sp,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Location1()));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.h,
                          decoration: BoxDecoration(
                              color: hexToColor('#4725F3'),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Image(
                              image: AssetImage('assets/location.png')),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'AR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 8.h,
                        width: 8.h,
                        decoration: BoxDecoration(
                            color: hexToColor('#4725F3'),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Image(image: AssetImage('assets/map.png')),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        'MAP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  )
                ],
              ),
              DraggableScrollableSheet(
                  expand: true,
                  initialChildSize: 0.6,
                  minChildSize: 0.6,
                  maxChildSize: 1,
                  builder: (context, scrollController) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 1.5.h, horizontal: 5.w),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Suggestions ',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45.h,
                            child: ListView.builder(
                              itemCount: statesArray.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2.w),
                                          child: Image.asset(
                                              statesArray[index].image),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 1.h, horizontal: 2.w),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1.h, horizontal: 2.w),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  statesArray[index].country,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 19.sp,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                SizedBox(height: 0.2.h),
                                                Text(
                                                  statesArray[index].state,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0,
                                                  ),
                                                ),
                                                SizedBox(height: 0.2.h),
                                                Text(
                                                  statesArray[index]
                                                      .description,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w200,
                                                    height: 0,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      height: 10,
                                      color: Colors.black.withOpacity(0.2),
                                      thickness: 1,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ]),
                      ),
                    );
                  }),
            ],
          ))
        ],
      ),
    );
  }
}
