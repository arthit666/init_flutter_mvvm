import 'package:get/get.dart';
import 'package:init_app/commons/constants/enpoint_constant.dart';
import 'package:init_app/data/services/api_service.dart';
import 'package:init_app/models/_network/user_detail_response.dart';

class ApiRepository extends GetxService {
  final ApiService _service = Get.find<ApiService>();

  Future<List<UserDetailReponse>?> getUserList() async {
    Map<String, dynamic> queryParameters = {};
    Uri uri = Uri(
      path: EndPoints.userList,
      queryParameters: queryParameters.isNotEmpty ? queryParameters : null,
    );
    var res = await _service.getUserList(uri.toString());
    return res;
  }
}
