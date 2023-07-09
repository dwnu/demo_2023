import 'package:dawid_wnukowski_2023/data/game/data_source/game_remote_data_source.dart';
import 'package:dawid_wnukowski_2023/domain/exception_handler/app_error.dart';
import 'package:dawid_wnukowski_2023/domain/exception_handler/exception_handler.dart';
import 'package:dawid_wnukowski_2023/domain/game/model/game_model.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameRepository {
  GameRepository(this._remoteDataSource, this._exceptionHandler);

  final GameRemoteDataSource _remoteDataSource;
  final ExceptionHandler _exceptionHandler;

  Future<Either<AppError, List<GameModel>>> fetchGames() async {
    return _exceptionHandler.wrapRepositoryFunction(() async {
      final result = await _remoteDataSource.fetchGames();
      return result.map((e) => e.toModel()).toList();
    });
  }
}

final gameRepositoryProvider = Provider<GameRepository>((ref) {
  return GameRepository(
    ref.read(gameRemoteDataSourceProvider),
    ref.read(exceptionHandlerProvider),
  );
});
