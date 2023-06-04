import 'package:clean_arch_with_riverpod/core/service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/failure.dart';
import '../../../domain/usecase/userListUseCase.dart';
import '../../models/user_model.dart';
import 'user_list_remote_data_source.dart';

@Injectable(as: UserListRemoteDataSource)
class UserListRemoteDataSourceImpl implements UserListRemoteDataSource {
  final ApiService _apiService;
  UserListRemoteDataSourceImpl({required ApiService apiService})
      : _apiService = apiService;

  final String getUserListEndPoint = "users";
  @override
  Future<Either<Failure, UserModel>> getUserList(
      {UserListParams? params}) async {
    var response = await _apiService.dioGet(
        path: getUserListEndPoint, queryParameters: params);
    return response.fold((failed) {
      return Left(failed);
    }, (result) {
      return Right(UserModel.fromJson(result.data));
    });
  }
}
