import 'package:clean_arch_with_riverpod/features/authentication/presentations/view/providers/user_list_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/state/base_state.dart';
import '../../../domain/usecase/userListUseCase.dart';

final usersProvider = StateNotifierProvider<UserListNotifier, BaseState>(
  (ref) {
    return UserListNotifier(
      ref.watch(getUserUseCaseProvider),
    );
  },
);

// final userListProvider = FutureProvider<List<User>>(
//   (ref) async {
//     final response = await ref
//         .watch(getUserUseCaseProvider)
//         .getUserList(UserListParams(page: 2));
//     return response.fold((failed) {
//       print(failed);
//       return [];
//     }, (r) => r);
//   },
// );
