import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/appbar.dart';
import '../widgets/customer_card.dart';

class AvailableCustomerScreen extends StatefulWidget {
  const AvailableCustomerScreen({super.key});

  @override
  State<AvailableCustomerScreen> createState() =>
      _AvailableCustomerScreenState();
}

class _AvailableCustomerScreenState extends State<AvailableCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarServiceAppBar(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0XFF021649),
            Colors.blue.shade900,
          ],
        ),
        title: Text(
          'Customers',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Inter',
            fontSize: 18.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined,
              color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Image.asset(
              'images/Vector.png',
              width: 22.w,
              height: 15.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
        toolbarHeight: 69.h,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Available Customers',
                  style: TextStyle(
                      fontSize: 20.0.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600),
                ),
                const Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Color(0XFF003EDC),
                  size: 25,
                )
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
                border: Border.all(color: Colors.grey.withOpacity(0.5)),
              ),
              child: TextField(
                // controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search by Name or Vehicle Number',
                  hintStyle: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                      color: const Color(0XFF929292)),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search Result',
                  style: TextStyle(
                      fontSize: 12.0.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Showing 4 of 250',
                  style: TextStyle(
                      fontSize: 12.0.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            const CustomerCard(name: 'Abinanthan'),
            SizedBox(height: 23.h),
            const CustomerCard(name: 'Kailash'),
            SizedBox(height: 23.h),
            const CustomerCard(name: 'Arun Shankar'),
            SizedBox(height: 23.h),
            const CustomerCard(name: 'Mukesh Ambani'),
          ],
        ),
      ),
    );
  }
}
