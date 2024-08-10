import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/route_manager.dart';
import '../core/routes.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return  const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My Flutter App',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          // ),
          initialRoute: CarServiceAppRoutes.loginRoute,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}





