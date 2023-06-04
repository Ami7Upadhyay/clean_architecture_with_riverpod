import 'package:clean_arch_with_riverpod/core/default_response/default_response.dart';
import 'package:clean_arch_with_riverpod/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

Either<Failure, Response> statusCodeHandling(Response response) {
  if (response.statusCode == 200) {
    // var defaultResponse = DefaultResponse.fromJson(response.data);
    // if (defaultResponse.success) {
    //   return Right(response);
    // }
    return Right(response);
    // return Left(Failure.server(
    //     code: defaultResponse.error!.code,
    //     message: defaultResponse.error!.errorMessage));
  } else if (response.statusCode != null &&
      response.statusCode! >= 400 &&
      response.statusCode! < 500) {
    var defaultResponse = DefaultResponse.fromJson(response.data);
    return Left(Failure.server(
        code: defaultResponse.error!.code,
        message: defaultResponse.error!.errorMessage));
  } else if (response.statusCode == 500) {
    return Left(Failure.server(
        code: response.statusCode!, message: "Internal Server Error"));
  } else {
    return Left(Failure.server(
        code: response.statusCode!, message: response.statusMessage!));
  }
}
