import 'package:crypto_carservice/Screens/drawer/customer/customer_module.dart';
import 'package:crypto_carservice/core/routes.dart';
import 'package:flutter/material.dart';

import '../Screens/authentication/login.dart';
import '../Screens/dashboard/dashboard.dart';

class InstantPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  InstantPageRoute({required this.page})
      : super(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CarServiceAppRoutes .loginRoute:
        return InstantPageRoute(page: const LoginScreen());
      case CarServiceAppRoutes.dashboardRoute:
        return InstantPageRoute(page: const DashboardScreen());
      case CarServiceAppRoutes.availableCustomerRoute:
        return InstantPageRoute(page: const AvailableCustomerScreen());
      // case CarServiceAppRoutes .mobileNoVerifyRoute:
      //   return InstantPageRoute(page: const MobileNoVerificationPage());
      // case CarServiceAppRoutes .otpRoute:
      //   return InstantPageRoute(page: const OTPPage());
      // case CarServiceAppRoutes.confirmPinRoute:
      //   return InstantPageRoute(page: const ConfirmPinPage());
      // case CarServiceAppRoutes.bottomNavBarRoute:
      //   return InstantPageRoute(page: const BottomNavigationBarPage());
      // case CarServiceAppRoutes.employeeDetailRoute:
      //   return InstantPageRoute(page: const EmployeeDetailsPage(
      //
      //   ));
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(title: const Text('Unknown Route')),
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
