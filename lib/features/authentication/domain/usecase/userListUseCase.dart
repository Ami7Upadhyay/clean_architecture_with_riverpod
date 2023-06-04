import 'package:clean_arch_with_riverpod/core/request_param/request_param.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/repository/user_list_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failure.dart';
import '../entity/user.dart';

final getUserUseCaseProvider = Provider<GetUserUseCase>((ref) {
  return GetUserUseCase(
      userListRepository: ref.watch(userListRepositoryProvider));
});

@injectable
class GetUserUseCase /*implements UseCase<List<User>, UserListParams>*/ {
  final UserListRepository _userListRepository;
  GetUserUseCase({required UserListRepository userListRepository})
      : _userListRepository = userListRepository;
  // @override
  // Future<Either<Failure, List<User>>> call(UserListParams params) async {
  //   try {
  //     return await _userListRepository.getUserList();
  //   } catch (e) {
  //     return Left(Failure.exception(message: e.toString()));
  //   }
  // }

  Future<Either<Failure, List<User>>> getUserList(
      {UserListParams? params}) async {
    try {
      return await _userListRepository.getUserList(params: params);
    } catch (e) {
      return Left(Failure.exception(message: e.toString()));
    }
  }
}

class UserListParams extends RequestParam {
  final int page;
  UserListParams({required this.page});
  @override
  Map<String, dynamic> toJson() {
    return {"page": page};
  }
}
