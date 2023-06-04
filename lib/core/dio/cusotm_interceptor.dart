import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      print('=========>');
      print(
          'REQUEST[${options.method}}] => PATH: ${options.baseUrl + options.path}, RequestParams=>${options.queryParameters}');
      print('=========>');
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print('--------->');
      print(
          'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.baseUrl + response.requestOptions.path}');
      print('--------->');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      print(
          'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path + err.requestOptions.path}');
    }
    super.onError(err, handler);
  }
}
