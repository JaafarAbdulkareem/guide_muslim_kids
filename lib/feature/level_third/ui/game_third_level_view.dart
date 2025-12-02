import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/level_third/ui/widget/body_game_third_level_view.dart';

class GameSecondLevelView extends StatelessWidget {
  const GameSecondLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lettersBackground3,
      body: SafeArea(child: BodyGameThirdLevelView()),
    );
  }
}
