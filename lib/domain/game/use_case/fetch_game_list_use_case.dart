import 'package:dawid_wnukowski_2023/domain/game/model/game_model.dart';
import 'package:dawid_wnukowski_2023/domain/game/repository/game_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fetchGameListUseCase = FutureProvider<List<GameModel>>(
  (ref) async {
    final result = await ref.read(gameRepositoryProvider).fetchGames();
    return result.fold((error) => throw error, (result) => result);
  },
);
