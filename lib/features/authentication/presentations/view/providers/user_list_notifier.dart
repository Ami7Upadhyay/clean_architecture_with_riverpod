import 'package:clean_arch_with_riverpod/core/state/base_state.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/entity/user.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/usecase/userListUseCase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListNotifier extends StateNotifier<BaseState> {
  final GetUserUseCase _getUserUseCase;

  UserListNotifier(this._getUserUseCase) : super(InitialState());

  List<User> users = [];

  Future<void> getUserList({UserListParams? userListParams}) async {
    state = const LoadingState();

    try {
      final result = await _getUserUseCase.getUserList(params: userListParams);
      result.fold(
        (failed) {
          return state = ErrorState(data: failed.toString());
        },
        (response) {
          users = response;
          return state = SuccessState(data: response);
        },
      );
    } catch (e, stacktrace) {
      state = ErrorState(data: e.toString());
    }
  }
}
