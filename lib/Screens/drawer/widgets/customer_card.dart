import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerCard extends StatelessWidget {
  final String name;

  const CustomerCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: Card(
        color: Colors.white,
        elevation: 8,
        margin: const EdgeInsets.all(0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Inter',
                ),
              ),
              Image.asset('images/arrow.png')
            ],
          ),
        ),
      ),
    );
  }
}
