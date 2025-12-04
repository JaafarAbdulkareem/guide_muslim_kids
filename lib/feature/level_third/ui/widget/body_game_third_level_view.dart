import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/item_game_level.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/stage_header.dart';

class BodyGameThirdLevelView extends StatelessWidget {
  const BodyGameThirdLevelView({super.key, required this.levels});
  final List<GameLevelEntity> levels;

  @override
  Widget build(BuildContext context) {
    final Color colorLetter = AppColor.lettersText3;
    final Color colorBGItem = AppColor.bgLevelItem3;
    final Color colorShadowItem = AppColor.shadowLevelItem3;
    return Column(
      children: [
        BlocBuilder<GameLevelCubit, int>(
          builder: (context, unlockedLevel) {
            String stageName = "المستوى الثالث"; //S.of(context).thirdLevel;
            return StageHeader(
              title: stageName,
              unlockedLevel: unlockedLevel,
              colorBG: colorLetter,
              lengthData: levels.length,
              previousLevelsLength: GameLevelCubit.firstSecondLength,
            );
          },
        ),
        Expanded(
          child: BlocBuilder<GameLevelCubit, int>(
            builder: (context, unlockedLevel) {
              return ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: levels.length,
                itemBuilder: (context, index) {
                  final level = levels[index];
                  final isLocked = level.levelId > unlockedLevel;

                  return ItemGameLevel(
                    level: level,
                    isLocked: isLocked,
                    isLeft: index % 2 == 0,
                    colorBGItem: colorBGItem,
                    colorShadowItem: colorShadowItem,
                    colorLetter: colorLetter,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
