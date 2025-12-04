import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/level_first/data/data_first_choose_correct.dart';
import 'package:guide_muslim_kids/feature/level_first/data/data_first_drog_drop_word.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_item_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/level_first/data/data_first_two_option.dart';

List<GameLevelEntity> getDataGameFirstLevel(BuildContext context) {
  List<GameLevelEntity> levels = [];

  // 1. Get all raw data
  final twoBtnData = getDataFirstTwoOption(context);
  final dragDropData = getDataFirstDragDropWord(context);
  final chooseData = getDataFirstChooseWords(context);

  // 2. Create a flat list of ALL games
  List<GameItemEntity> allItems = [];

  for (var item in twoBtnData) {
    allItems.add(GameItemEntity(type: GameType.twoButtons, data: item));
  }
  for (var item in dragDropData) {
    allItems.add(GameItemEntity(type: GameType.sorting, data: item));
  }
  for (var item in chooseData) {
    allItems.add(GameItemEntity(type: GameType.chooseCorrect, data: item));
  }

  // 3. Generate a separate Level for EACH item
  for (int i = 0; i < allItems.length; i++) {
    levels.add(
      GameLevelEntity(
        levelId: i + 1,
        levelNumber: i + 1,
        title: "المستوى ${i + 1}", //S.of(context).stage
        gameItems: [allItems[i]],
      ),
    );
  }

  return levels;
}
