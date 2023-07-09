import 'package:dawid_wnukowski_2023/data/game/data_source/game_remote_data_source.dart';
import 'package:dawid_wnukowski_2023/data/game/dto/game_dto.dart';

class GameMockDataSource extends GameRemoteDataSource {
  GameMockDataSource(super._client);

  @override
  Future<List<GameDto>> fetchGames() async {
    await Future.delayed(const Duration(seconds: 3));

    return [
      GameDto(title: 'The Last of Us 2'),
      GameDto(title: 'Nier Automata'),
      GameDto(title: 'Danganronpa'),
    ];
  }
}
