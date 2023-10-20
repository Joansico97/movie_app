import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/constants/routes_names.dart';

part './routes_handler.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

final routerProvider = Provider((ref) => _RouterNavConfig().router);

class _RouterNavConfig {
  _RouterNavConfig();
  final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutesNames.home,
    routes: <GoRoute>[
      GoRoute(
        path: RoutesNames.home,
        builder: _homeBuilder,
      ),
      GoRoute(
        path: RoutesNames.details,
        builder: _detailsBuilder,
      ),
    ],
  );
}
