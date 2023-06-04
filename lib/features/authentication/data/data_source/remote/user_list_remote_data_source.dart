import 'package:clean_arch_with_riverpod/core/error/failure.dart';
import 'package:clean_arch_with_riverpod/features/authentication/data/data_source/remote/user_list_remote_data_source_imp.dart';
import 'package:clean_arch_with_riverpod/features/authentication/data/models/user_model.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/usecase/userListUseCase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/service/api_service.dart';

final userListRemoteDataSourceProvider =
    Provider<UserListRemoteDataSource>((ref) {
  return UserListRemoteDataSourceImpl(
      apiService: ref.watch(apiServiceProvider));
});

abstract class UserListRemoteDataSource {
  Future<Either<Failure, UserModel>> getUserList({UserListParams? params});
}
