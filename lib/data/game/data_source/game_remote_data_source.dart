import 'package:dawid_wnukowski_2023/core/network/dio_client.dart';
import 'package:dawid_wnukowski_2023/data/game/data_source/game_mock_data_source.dart';
import 'package:dawid_wnukowski_2023/data/game/dto/game_dto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameRemoteDataSource {
  GameRemoteDataSource(this._client);

  // ignore: unused_field
  final DioClient _client;

  Future<List<GameDto>> fetchGames() {
    throw UnimplementedError();
  }
}

final gameRemoteDataSourceProvider = Provider<GameRemoteDataSource>(
  // Temporary use mock data source
  (ref) => GameMockDataSource(
    ref.read(dioClientProvider),
  ),
);
