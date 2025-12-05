import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/level_first/ui/widget/body_game_first_level_view.dart';

class GameFirstLevelView extends StatelessWidget {
  const GameFirstLevelView({super.key, required this.levels});
  final List<GameLevelEntity> levels;
  @override
  Widget build(BuildContext context) {
    return BodyGameFirstLevelView(
      levels: levels,
    ).safeArea(backgroundColor: AppColor.lettersBackground);
  }
}
