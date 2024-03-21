import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:init_app/application/base/base_view.dart';
import 'package:init_app/application/routes/app_pages.dart';
import 'package:init_app/ui/splash_screen/splash_screen.vm.dart';

// ignore: must_be_immutable
class SplashScreenView extends BaseView<SplashScreenVM> {
  SplashScreenView({super.key});

  String get name => '/splash_screen';

  @override
  void onInit() async {
    _initObserver();
    _init();
    super.onInit();
  }

  _initObserver() {
    controller.failureResponse.listen((String failureResponse) {
      showAlertMessageDialog(
        failureResponse,
      );
    });
  }

  _init() async {
    controller.init();
  }

  @override
  Widget render(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SplashScreen')),
      body: Center(
        child: InkWell(
          onTap: () {
            Get.toNamed(Routes.home);
          },
          child: const Text('Home'),
        ),
      ),
    );
  }
}
