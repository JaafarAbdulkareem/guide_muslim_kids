import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/level_third/ui/widget/body_game_third_level_view.dart';

class GameThirdLevelView extends StatelessWidget {
  const GameThirdLevelView({super.key, required this.levels});
  final List<GameLevelEntity> levels;

  @override
  Widget build(BuildContext context) {
    return BodyGameThirdLevelView(
      levels: levels,
    ).safeArea(backgroundColor: AppColor.lettersBackground3);
  }
}
