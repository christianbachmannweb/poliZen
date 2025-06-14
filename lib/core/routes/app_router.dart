import 'package:auto_route/auto_route.dart';
import 'package:polizen_app/core/routes/app_router.gr.dart';
import 'package:polizen_app/presentation/pages/player/view/player_page.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: DetailRoute.page),
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: PlayerRoute.page, usesPathAsKey: true),
  ];
}
