import 'dart:async';
import 'dart:io';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:dio/dio.dart';
import 'package:init_app/commons/enum.dart';

class BaseService extends GetxService {
  final String baseUrl;
  late Dio _dio;

  BaseService({required this.baseUrl}) {
    initSetting();
  }

  static header() => {
        'Content-Type': 'application/json',
      };

  String basePath(String path) => '$baseUrl$path';

  Future<BaseService> initSetting() async {
    _dio = Dio(BaseOptions(baseUrl: baseUrl, headers: header()));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('REQUEST[${options.method}] => PATH: ${options.path} '
              '=> Request Values: ${options.queryParameters}, => HEADERS: ${options.headers}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
          return handler.next(response);
        },
        onError: (err, handler) {
          print('ERROR[${err.response?.statusCode}]');
          return handler.next(err);
        },
      ),
    );
  }

  Future<Response> request(
    String url,
    Method method, {
    Map<String, dynamic>? data,
  }) async {
    Response? response;
    try {
      switch (method) {
        case Method.GET:
          response = await _dio.get(url, queryParameters: data);
        case Method.POST:
          response = await _dio.post(url, data: data);
        case Method.PATCH:
          response = await _dio.patch(url, data: data);
        case Method.PUT:
          response = await _dio.put(url, data: data);
        case Method.DELETE:
          response = await _dio.delete(url);
        default:
          response = null;
      }

      if (response!.statusCode != 200 &&
          response.statusCode != 201 &&
          response.statusCode != 204) {
        _checkResponseError(response);
      }

      return response;
    } on SocketException catch (e) {
      throw Exception('No Internet Connection');
    } on FormatException {
      throw Exception('Bad Response Format!');
    } on DioError catch (e) {
      throw Exception('Dio Error : $e');
    } catch (e) {
      throw Exception('Something Went Wrong');
    }
  }

  void _checkResponseError(Response? response) {
    switch (response?.statusCode) {
      case null:
        throw Exception('Null Response');
      case 400:
        throw Exception('Bad Required');
      case 401:
        throw Exception('Unauthorized');
      case 404:
        throw Exception('Not Found');
      case 500:
        throw Exception('Server Error');
      default:
        throw Exception('Something Went Wrong');
    }
  }
}
