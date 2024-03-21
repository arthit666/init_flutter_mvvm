import 'package:get/get.dart';
import 'package:init_app/application/base/base_vm.dart';
import 'package:init_app/data/repositories/api_repository.dart';
import 'package:init_app/models/_network/user_detail_response.dart';

class SplashScreenVM extends BaseVM {
  final Rx<bool> isInitialSuccess = false.obs;
  final ApiRepository _apiRepository = Get.find<ApiRepository>();

  init() {
    _loadUser();
  }

  _loadUser() {
    _apiRepository.getUserList().then(
      (List<UserDetailReponse>? data) {
        if (data == null) return;
        print(data);
      },
    ).catchError((e) {
      handleException('_loadUser', e);
    });
  }
}
