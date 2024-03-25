import 'package:auto_route/auto_route.dart';
import 'package:task_ninja/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: CounterRoute.page,
      path: '/counter-page',
    ),
  ];
}
