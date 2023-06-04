import 'package:clean_arch_with_riverpod/core/dio/cusotm_interceptor.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://reqres.in/api/'; // Staging

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url, CustomInterceptor interceptor) {
    var options = BaseOptions(
      baseUrl: url,
      // connectTimeout: 5000,
      // receiveTimeout: 3000,
    );
    var dio = Dio(options);
    dio.interceptors.add(interceptor);
    return dio;
  }

  @lazySingleton
  Connectivity get checkDataConnection => Connectivity();
}
