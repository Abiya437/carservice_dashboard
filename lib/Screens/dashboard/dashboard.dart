// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});
//
//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen> {
//   late double width, height;
//   // void _showTopDrawer(BuildContext context) {
//   //   showModalBottomSheet(
//   //     context: context,
//   //     isScrollControlled: true,
//   //     backgroundColor: Colors.transparent,
//   //     builder: (context) {
//   //       return DraggableScrollableSheet(
//   //         initialChildSize: 0.3,
//   //         minChildSize: 0.1,
//   //         maxChildSize: 0.5,
//   //         builder: (_, controller) {
//   //           return Container(
//   //             decoration: BoxDecoration(
//   //               color: Colors.white,
//   //               borderRadius: BorderRadius.only(
//   //                 topLeft: Radius.circular(15),
//   //                 topRight: Radius.circular(15),
//   //               ),
//   //             ),
//   //             child: ListView(
//   //               controller: controller,
//   //               children: [
//   //                 ListTile(
//   //                   leading: Icon(Icons.person),
//   //                   title: Text('Profile'),
//   //                   onTap: () {
//   //                     // Handle profile tap
//   //                   },
//   //                 ),
//   //                 ListTile(
//   //                   leading: Icon(Icons.settings),
//   //                   title: Text('Settings'),
//   //                   onTap: () {
//   //                     // Handle settings tap
//   //                   },
//   //                 ),
//   //                 ListTile(
//   //                   leading: Icon(Icons.logout),
//   //                   title: Text('Logout'),
//   //                   onTap: () {
//   //                     // Handle logout tap
//   //                   },
//   //                 ),
//   //               ],
//   //             ),
//   //           );
//   //         },
//   //       );
//   //     },
//   //   );
//   // }
//   @override
//   Widget build(BuildContext context) {
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: height * 0.2,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [
//                   const Color(0XFF021649),
//                   Colors.blue.shade900,
//                 ],
//               ),
//               borderRadius: const BorderRadius.only(
//                 bottomRight: Radius.circular(0),
//                 bottomLeft: Radius.circular(0),
//               ),
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16.w),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Container(
//                         width: 40.0.w,
//                         height: 40.0.h,
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                             image: AssetImage('images/dashboard.png'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 10.0.w),
//                       Text(
//                         'Hi Moideen',
//                         style: TextStyle(
//                           fontFamily: 'Inter',
//                           color: Colors.white,
//                           fontSize: 13.sp,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   InkWell(
//                     onTap: (){
//                       // _showTopDrawer(context);
//                       debugPrint('Drawer');
//                     },
//                       child: Image.asset('images/Vector.png')),
//                 ],
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: EdgeInsets.only(top: height * 0.15),
//               child: Container(
//                 width: 310.0.w,
//                 height: 130.0.h,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(15.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 30.w, vertical: 10.h),
//                       child: Text(
//                         'Your Strength',
//                         style: TextStyle(
//                             fontSize: 13.0.sp,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: 'Inter',
//                             color: Colors.black),
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Column(
//                             children: [
//                               Text(
//                                 '30',
//                                 style: TextStyle(
//                                     fontSize: 23.0.sp,
//                                     fontWeight: FontWeight.w700,
//                                     color: const Color(0XFF1E3763)),
//                               ),
//                               Text(
//                                 'Employee',
//                                 style: TextStyle(
//                                   fontSize: 14.0.sp,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 '150',
//                                 style: TextStyle(
//                                     fontSize: 23.0.sp,
//                                     fontWeight: FontWeight.w700,
//                                     color: const Color(0XFF1E3763)),
//                               ),
//                               Text(
//                                 'Customers',
//                                 style: TextStyle(
//                                   fontSize: 14.0.sp,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             top: height * 0.35,
//             left: 16.w,
//             right: 16.w,
//             child: SizedBox(
//               width: width - 32.w,
//               height: height * 0.65,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Today’s Wash',
//                     style: TextStyle(
//                       fontSize: 20.0.sp,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: 'Inter',
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 10.h),
//                   Expanded(
//                     child: ListView.builder(
//                       itemCount: 4,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           elevation: 4,
//                           color: Colors.white,
//                           margin: EdgeInsets.symmetric(vertical: 5.h),
//                           child: Padding(
//                             padding: EdgeInsets.all(18.h),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       'TN 45 AK 1234',
//                                       style: TextStyle(
//                                         fontSize: 12.0.sp,
//                                         fontFamily: 'Inter',
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Completed',
//                                       style: TextStyle(
//                                         fontSize: 10.0.sp,
//                                         fontFamily: 'Inter',
//                                         fontWeight: FontWeight.w600,
//                                         color: const Color(0XFF569C00),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: 10.h),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment
//                                       .spaceBetween, // Adjusts the spacing between the items in the row
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(5.h),
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.h),
//                                             color: const Color(0XFF001C63),
//                                           ),
//                                           child: Text(
//                                             'Interior Wash',
//                                             style: TextStyle(
//                                               fontSize: 8.0.sp,
//                                               fontFamily: 'Inter',
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                         SizedBox(width: 10.w),
//                                         Container(
//                                           padding: EdgeInsets.all(5.h),
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(20.h),
//                                             color: const Color(0XFF001C63),
//                                           ),
//                                           child: Text(
//                                             'Exterior Wash',
//                                             style: TextStyle(
//                                               fontSize: 8.0.sp,
//                                               fontFamily: 'Inter',
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           'Arun',
//                                           style: TextStyle(
//                                             fontSize: 8.0.sp,
//                                             fontFamily: 'Inter',
//                                             fontWeight: FontWeight.w600,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                         SizedBox(width: 5.w),
//                                         Image.asset('images/task.png')
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: 10.h),
//                                 Text(
//                                   'More Information',
//                                   style: TextStyle(
//                                     fontSize: 9.0.sp,
//                                     fontFamily: 'Inter',
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:crypto_carservice/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late double width, height;

  void _showTopDrawer(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.3,
          minChildSize: 0.1,
          maxChildSize: 0.5,
          builder: (_, controller) {
            return Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: ListView(
                controller: controller,
                children: [
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      // Handle profile tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      // Handle settings tap
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {
                      // Handle logout tap
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0XFF021649),
                  Colors.blue.shade900,
                ],
              ),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40.0.w,
                        height: 40.0.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/dashboard.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0.w),
                      Text(
                        'Hi Moideen',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      // _showTopDrawer(context);
                    Navigator.of(context).pushNamed(CarServiceAppRoutes.availableCustomerRoute);

                    },
                    child: Image.asset('images/Vector.png'),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.15),
              child: Container(
                width: 310.0.w,
                height: 130.0.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.w, vertical: 10.h),
                      child: Text(
                        'Your Strength',
                        style: TextStyle(
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                '30',
                                style: TextStyle(
                                    fontSize: 23.0.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0XFF1E3763)),
                              ),
                              Text(
                                'Employee',
                                style: TextStyle(
                                  fontSize: 14.0.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '150',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 23.0.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0XFF1E3763)),
                              ),
                              Text(
                                'Customers',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.35,
            left: 16.w,
            right: 16.w,
            child: SizedBox(
              width: width - 32.w,
              height: height * 0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today’s Wash',
                    style: TextStyle(
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 4,
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(vertical: 5.h),
                          child: Padding(
                            padding: EdgeInsets.all(18.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'TN 45 AK 1234',
                                      style: TextStyle(
                                        fontSize: 12.0.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Completed',
                                      style: TextStyle(
                                        fontSize: 10.0.sp,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0XFF569C00),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(5.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20.h),
                                            color: const Color(0XFF001C63),
                                          ),
                                          child: Text(
                                            'Interior Wash',
                                            style: TextStyle(
                                              fontSize: 8.0.sp,
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10.w),
                                        Container(
                                          padding: EdgeInsets.all(5.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20.h),
                                            color: const Color(0XFF001C63),
                                          ),
                                          child: Text(
                                            'Exterior Wash',
                                            style: TextStyle(
                                              fontSize: 8.0.sp,
                                              fontFamily: 'Inter',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Arun',
                                          style: TextStyle(
                                            fontSize: 8.0.sp,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: 5.w),
                                        Image.asset('images/task.png')
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'More Information',
                                  style: TextStyle(
                                    fontSize: 9.0.sp,
                                    fontFamily: 'Inter',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
