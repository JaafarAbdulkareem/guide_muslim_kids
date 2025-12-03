import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/level_first/ui/widget/body_game_first_level_view.dart';

class GameFirstLevelView extends StatelessWidget {
  const GameFirstLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lettersBackground,
      body: SafeArea(child: BodyGameFirstLevelView()),
    );
  }
}
