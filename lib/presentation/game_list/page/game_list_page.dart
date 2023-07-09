import 'package:dawid_wnukowski_2023/domain/game/use_case/fetch_game_list_use_case.dart';
import 'package:dawid_wnukowski_2023/presentation/game_list/widget/game_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameListPage extends ConsumerWidget {
  const GameListPage({super.key});

  static const routeName = 'games';
  static const routePath = '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameList = ref.watch(fetchGameListUseCase);

    return Scaffold(
      body: SafeArea(
        child: gameList.when(
          data: (data) => ListView(
            physics: const ClampingScrollPhysics(),
            children: data.map((e) => GameCard(model: e)).toList(),
          ),
          error: (error, _) => Center(child: Text(error.toString())),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
