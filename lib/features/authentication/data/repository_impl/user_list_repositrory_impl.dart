import 'package:clean_arch_with_riverpod/core/error/failure.dart';
import 'package:clean_arch_with_riverpod/features/authentication/data/data_source/remote/user_list_remote_data_source.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/entity/user.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/user_list_repository.dart';
import '../../domain/usecase/userListUseCase.dart';

@Injectable(as: UserListRepository)
class UserListRepositoryImpl implements UserListRepository {
  final UserListRemoteDataSource _userListDataSource;
  UserListRepositoryImpl({required UserListRemoteDataSource datasource})
      : _userListDataSource = datasource;

  @override
  Future<Either<Failure, List<User>>> getUserList(
      {UserListParams? params}) async {
    var response = await _userListDataSource.getUserList(params: params);
    return response.fold((failed) {
      return Left(failed);
    }, (result) {
      return Right(result.data);
    });
  }
}
