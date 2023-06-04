import 'package:auto_route/auto_route.dart';

import '../../features/authentication/presentations/view/home.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, path: '/home', page: MyHomeRoute.page),
      ];
}
