import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/level_third/ui/widget/body_game_third_level_view.dart';

class GameThirdLevelView extends StatelessWidget {
  const GameThirdLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lettersBackground3,
      body: SafeArea(child: BodyGameThirdLevelView()),
    );
  }
}
