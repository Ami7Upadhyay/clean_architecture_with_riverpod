import 'package:clean_arch_with_riverpod/core/error/failure.dart';
import 'package:clean_arch_with_riverpod/core/service/api_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../error/dio_exceptions.dart';
import '../error/error_code_handling.dart';
import '../network/network_info.dart';
import '../request_param/request_param.dart';

@Singleton(as: ApiService)
class ApiServiceImpl implements ApiService {
  final Dio _dio;
  final NetworkInfo _networkInfo;

  ApiServiceImpl({required Dio dio, NetworkInfo? networkInfo})
      : _dio = dio,
        _networkInfo = networkInfo ?? NetworkInfo(Connectivity());

  @override
  Future<Either<Failure, Response>> dioGet(
      {required String path,
      RequestParam? queryParameters,
      Options? options}) async {
    try {
      if (await _networkInfo.isConnected()) {
        var response = await _dio.get(path,
            queryParameters: queryParameters?.toJson(), options: options);
        // return Right(response);
        return statusCodeHandling(response);
      } else {
        return Left(Failure.network(message: "No Internet Connection!"));
      }
    } on DioError catch (err, _) {
      return DioExceptions().fromDioError(dioError: err);
    } catch (error) {
      return Left(Failure.exception(message: error.toString()));
    }
  }
}
