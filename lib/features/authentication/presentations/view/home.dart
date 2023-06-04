import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_with_riverpod/config/dependency_injection/dependency_injection.dart';
import 'package:clean_arch_with_riverpod/core/state/base_state.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/repository/user_list_repository.dart';
import 'package:clean_arch_with_riverpod/features/authentication/domain/usecase/userListUseCase.dart';
import 'package:clean_arch_with_riverpod/features/authentication/presentations/view/providers/user_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entity/user.dart';

@RoutePage()
class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage>
    with WidgetsBindingObserver {
  final GetUserUseCase _getUserUseCase =
      GetUserUseCase(userListRepository: getIt<UserListRepository>());

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    Future.microtask(() {
      ref
          .read(usersProvider.notifier)
          .getUserList(userListParams: UserListParams(page: 2));
    });
    super.initState();
  }

  // void getApiCall() async {
  //   var response = await _getUserUseCase(UserListParams(page: 2));
  //   response.fold((l) {
  //     print(l);
  //   }, (r) {
  //     print(r);
  //   });
  // }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        print('resumed');
        break;
      case AppLifecycleState.inactive:
        print('inactive');
        break;
      case AppLifecycleState.paused:
        print('paused');
        break;
      case AppLifecycleState.detached:
        print('detached');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final userListState = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Clean Archtecure"),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NextPage()));
        },
        child: Text('Tap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            userListState is LoadingState
                ? const CircularProgressIndicator()
                : userListState is SuccessState<List<User>>
                    ? Flexible(
                        child: ListView.builder(
                            itemCount: userListState.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              User user = userListState.data![index];
                              return Text(user.firstName);
                            }))
                    : const Center(child: Text('Error')),
            // Flexible(
            //   child: userListState.when(
            //       data: (userList) {
            //         return ListView.builder(
            //             itemCount: userList.length,
            //             itemBuilder: (BuildContext context, int index) {
            //               User user = userList[index];
            //               return Text(user.firstName);
            //             });
            //       },
            //       error: (error, errorStack) {
            //         print(error);
            //         return const Center(child: Text('Error'));
            //       },
            //       loading: () => const CircularProgressIndicator()),
            // )
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title: Text('Next Page'),
      ),
    );
  }
}
