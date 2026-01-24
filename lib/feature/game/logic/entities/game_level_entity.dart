
import 'package:guide_muslim_kids/feature/game/logic/entities/game_item_entity.dart';

class GameLevelEntity {
  final int levelId;
  final int levelNumber;
  final String title;
  final List<GameItemEntity> gameItems;

  GameLevelEntity({
    required this.levelId,
    required this.levelNumber,
    required this.title,
    required this.gameItems,
  });
}

