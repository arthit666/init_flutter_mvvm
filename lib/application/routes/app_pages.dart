import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:init_app/ui/home/home.bindind.dart';
import 'package:init_app/ui/home/home.view.dart';
import 'package:init_app/ui/splash_screen/splash_screen.binding.dart';
import 'package:init_app/ui/splash_screen/splash_screen.view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: _Paths.splashScreen,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
