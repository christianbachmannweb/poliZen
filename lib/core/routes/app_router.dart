import 'package:auto_route/auto_route.dart';
import 'package:polizen_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: DetailRoute.page),
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: PlayerRoute.page),
    AutoRoute(page: PreMeditationRoute.page),
  ];
}
