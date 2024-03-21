import 'package:get/get.dart';
import 'package:init_app/application/env.dart';
import 'package:init_app/data/repositories/api_repository.dart';
import 'package:init_app/data/services/api_service.dart';
import 'package:init_app/data/services/base_service/base_service.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    var env = DevLocalEnvironment();
    Get.put(BaseService(baseUrl: env.getServiceApiBaseUrl()));
    Get.put(ApiService());
    Get.put(ApiRepository());
  }
}
