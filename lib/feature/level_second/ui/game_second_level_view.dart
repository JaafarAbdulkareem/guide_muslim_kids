import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/level_second/ui/widget/body_game_second_level_view.dart';

class GameSecondLevelView extends StatelessWidget {
  const GameSecondLevelView({super.key, required this.levels, 
  });
  final List<GameLevelEntity> levels;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lettersBackground2,
      body: SafeArea(child: BodyGameSecondLevelView(levels: levels)),
    );
  }
}
