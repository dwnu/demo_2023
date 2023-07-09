import 'package:dawid_wnukowski_2023/domain/game/model/game_model.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    required this.model,
    super.key,
  });

  final GameModel model;

  @override
  Widget build(BuildContext context) {
    if (model.isBroken) {
      return const SizedBox();
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          model.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
