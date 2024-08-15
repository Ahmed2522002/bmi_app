import 'package:bmi_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatelessWidget {
  final bool isMale;
  final int age;
  final double h;
  final int w;
  final double result;
  const ResultScreen({
    super.key,
    required this.age,
    required this.isMale,
    required this.result,
    required this.h,
    required this.w,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffd1d9e6),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Result',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
               Text('Your BMI is',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.sp),),
              // SizedBox(
              //   height: 10.h,
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                height: 120.h,
                width: 120.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      result.toStringAsFixed(1),
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const Text('kg/m2',
                        style: TextStyle(fontSize: 16, color: Colors.white))
                  ],
                ),
              ),
              // SizedBox(
              //   height: 20.h,
              // ),
              if (result < 18.5) ...[
                const Text(
                  '(Underweight)',
                  style: TextStyle(fontSize: 24,color:Colors.yellow,fontWeight: FontWeight.bold),
                ),
              ] else if (result >= 18.5 && result <= 24.9) ...[
                const Text(
                  '(Healthy Weight)',
                  style: TextStyle(fontSize: 24,color: Colors.green,fontWeight: FontWeight.bold),
                ),
              ] else if (result >= 25 && result <= 29.9) ...[
                const Text(
                  '(Overweight)',
                  style: TextStyle(fontSize: 24,color: Colors.yellow,fontWeight: FontWeight.bold),
                ),
              ] else if (result >= 30) ...[
                const Text(
                  '(Obesity)',
                  style: TextStyle(fontSize: 24,color: Colors.red,fontWeight: FontWeight.bold),
                ),
              ],
          
              Container(
                height: 110.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          isMale ? Icons.man : Icons.woman,
                          size: 40,
                        ),
                        Text(
                          isMale ? 'Male' : 'Female',
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '$age',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'Age',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${h.round()}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'Height',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '$w',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const Text(
                          'Weight',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              // SizedBox(height: 300.h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                height: 100.h,
                width: 100.w,
                child: MaterialButton(
                  onPressed: () {
          
          
                    // var result = CustomContainer. / pow(height / 100, 2);
                    // print(result.round());
                    // // Navigator.pushNamed(context, '/resultscreen');
                    Navigator.pop(context);
                  },
                  child:Icon(Icons.restart_alt,size: 40,color: Colors.white,),
                ),
              ),
              SizedBox(
                height: 13.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
