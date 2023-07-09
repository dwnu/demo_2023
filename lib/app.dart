import 'dart:math';

import 'package:dawid_wnukowski_2023/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      onGenerateTitle: (context) => 'Localized App Title ;)',
      themeMode: ThemeMode.light,
      routerConfig: router,
      builder: (context, child) => Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(context)
              .copyWith(textScaleFactor: min(MediaQuery.of(context).textScaleFactor, 1.25)),
          child: child!,
        ),
      ),
    );
  }
}
