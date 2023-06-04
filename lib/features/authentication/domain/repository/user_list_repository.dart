import 'package:clean_arch_with_riverpod/core/error/failure.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/entity/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_source/remote/user_list_remote_data_source.dart';
import '../../data/repository_impl/user_list_repositrory_impl.dart';
import '../usecase/userListUseCase.dart';

final userListRepositoryProvider = Provider<UserListRepository>((ref) {
  return UserListRepositoryImpl(
      datasource: ref.watch(userListRemoteDataSourceProvider));
});

abstract class UserListRepository {
  Future<Either<Failure, List<User>>> getUserList({UserListParams? params});
}
