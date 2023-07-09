import 'package:dawid_wnukowski_2023/domain/game/model/game_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_dto.freezed.dart';
part 'game_dto.g.dart';

@freezed
class GameDto with _$GameDto {
  factory GameDto({
    String? title,
  }) = _GameDto;

  GameDto._();

  factory GameDto.fromJson(Map<String, Object?> json) => _$GameDtoFromJson(json);

  GameModel toModel() => GameModel(
        title: title ?? '',
      );
}
