import 'package:clean_arch_with_riverpod/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../dio/dio_client.dart';
import '../request_param/request_param.dart';
import 'api_service_impl.dart';

final apiServiceProvider =
    Provider<ApiService>((ref) => ApiServiceImpl(dio: ref.watch(dioProvider)));

abstract class ApiService {
  Future<Either<Failure, Response>> dioGet(
      {required String path, RequestParam? queryParameters, Options? options});
}
