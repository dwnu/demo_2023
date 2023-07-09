import 'package:dawid_wnukowski_2023/presentation/game_list/page/game_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: GameListPage.routePath,
      routes: [
        GoRoute(
          path: GameListPage.routePath,
          name: GameListPage.routeName,
          builder: (context, _) => const GameListPage(),
        ),
      ],
    );
  },
);
