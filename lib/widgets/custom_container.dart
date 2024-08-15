import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatefulWidget {
  CustomContainer({super.key, required this.containerName,required this.value});
  final String? containerName;
  int? value;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.h,
      width: 175.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.containerName!,
            style: TextStyle(fontSize: 15.sp),
          ),
          Text(
            '${widget.value}',
            style: TextStyle(fontSize: 64.sp, fontWeight: FontWeight.w900),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.value = widget.value! - 1 ;
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
                    widget.value = widget.value! + 1 ;
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
    );
  }
}
