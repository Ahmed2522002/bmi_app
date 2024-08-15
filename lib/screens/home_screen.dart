import 'dart:math';

import 'package:bmi_app/screens/result_screen.dart';
import 'package:bmi_app/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 110.h;
  int weight = 40;
  int age = 10;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd1d9e6),
      appBar: AppBar(

        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome 😊',
                ),
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    width: 175.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: isMale ? Colors.blue : Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          size: 30.sp,
                          color: isMale ? Colors.white : Colors.blue,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: isMale ? Colors.white : Colors.blue),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    width: 175.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: isMale ? Colors.white : Colors.blue,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          size: 30.sp,
                          color: isMale ? Colors.blue : Colors.white,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: isMale ? Colors.blue : Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${height.round()} ',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          Text('cm'),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 30.w,
                            height: 400.h,
                            child:

                            RotatedBox(
                              quarterTurns: 3,
                              child: Slider(
                                activeColor: Colors.blue,
                                value: height,
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                                max: 190,
                                min: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 360.h,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('190'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('180'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('170'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('160'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('150'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('140'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('130'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('120'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('110'),
                                  ],
                                ),  Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 40.w,
                                      height: 1.5,
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    const Text('100'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      height: 230.h,
                      width: 175.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                                fontSize: 64.sp, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.blue,
                                    ),
                                    height: 40.h,
                                    width: 40.w,
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.blue,
                                    ),
                                    height: 40.h,
                                    width: 40.w,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 230.h,
                      width: 175.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                                fontSize: 64.sp, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.blue,
                                    ),
                                    height: 40.h,
                                    width: 40.w,
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: Colors.blue,
                                    ),
                                    height: 40.h,
                                    width: 40.w,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.blue,
            ),
            height: 60.h,
            width: double.infinity.w,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);

                // var result = CustomContainer. / pow(height / 100, 2);
                // print(result.round());
                // // Navigator.pushNamed(context, '/resultscreen');
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                      age: age,
                      isMale: isMale,
                      result: result,
                      h: height,
                      w: weight,
                    );
                  },
                ));
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 13.h,
          )
        ],
      ),
    );
  }
}
