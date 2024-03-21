import 'dart:async';
import 'package:dio/dio.dart' as Http;
import 'package:get/get.dart';
import 'package:init_app/commons/enum.dart';
import 'package:init_app/commons/utils/list_utils.dart';
import 'package:init_app/data/services/base_service/base_service.dart';
import 'package:init_app/models/_network/user_detail_response.dart';

class ApiService extends GetxService {
  final BaseService _baseService = Get.find<BaseService>();

  Future<List<UserDetailReponse>?> getUserList(
    String url,
  ) async {
    return await _baseService
        .request(
      url,
      Method.GET,
    )
        .then((Http.Response<dynamic> res) {
      List<UserDetailReponse>? data = toListOf(res.data)
          .map((json) => UserDetailReponse.fromJson(json))
          .toList();
      return data;
    });
  }
}
