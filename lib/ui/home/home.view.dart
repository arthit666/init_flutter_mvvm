import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:init_app/application/base/base_view.dart';
import 'package:init_app/ui/home/home.vm.dart';

// ignore: must_be_immutable
class HomeView extends BaseView<HomeVM> {
  HomeView({super.key});

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
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
