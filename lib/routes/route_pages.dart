
import 'package:coolie_admin/routes/route_name.dart';
import 'package:get/get.dart';

import '../screen/auth/sign_in.dart';
import '../screen/dashboard/dashboard/dashboard_screen.dart';
import '../screen/splash/splash_screen.dart';

class RoutePages {

static final List<GetPage> pages=[
   GetPage(name: RouteName.splash, page: () => SplashScreen()),
  // GetPage(name: RouteName.home, page: () => HomeScreen()),
   GetPage(name: RouteName.signIn, page: () => SignIn()),
  // GetPage(name: RouteName.checkIn, page: () => CheckIn()),
   GetPage(name: RouteName.travelHomeScreen, page: () => DashBoardScreen()),
  // GetPage(name: RouteName.transactionHistory, page: () => TransactionHistory()),
  // GetPage(name: RouteName.otpVerification, page: () => OtpVerification()),
];

}