part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardPageRoute.page,
          path: DASHBOARD,
          children: [
            RedirectRoute(path: '', redirectTo: TIMERSHEETS),
            AutoRoute(page: TimerSheetsPageRoute.page, path: TIMERSHEETS),
            AutoRoute(page: ProjectsPageRoute.page, path: PROJECTS),
            AutoRoute(page: SettingsPageRoute.page, path: SETTINGS),
          ],
        ),
      ];
}
