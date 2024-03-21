part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const splashScreen = _Paths.splashScreen;
  static const home = _Paths.home;
}

abstract class _Paths {
  static const splashScreen = '/splash_screen';
  static const home = '/home';
}
