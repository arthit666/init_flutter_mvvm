import 'package:get/get.dart';
import 'package:init_app/ui/splash_screen/splash_screen.vm.dart';

class SplashScreenBinding extends Bindings {
  // @override
  // void dependencies() {
  //   Get.lazyPut<SplashScreenVM>(
  //     () => SplashScreenVM(),
  //   );
  // }

  @override
  void dependencies() {
    Get.put<SplashScreenVM>(
      SplashScreenVM(),
    );
  }
}
