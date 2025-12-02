import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/game/data/data_second_level/data_game_second_level.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/item_game_level.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/stage_header.dart';

class BodyGameSecondLevelView extends StatelessWidget {
  const BodyGameSecondLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    final levels = getDataSecondLevel(context);
    final Color colorLetter = AppColor.lettersText2;
    final Color colorBGItem = AppColor.bgLevelItem2;
    final Color colorShadowItem = AppColor.shadowLevelItem2;
    return Column(
      children: [
        BlocBuilder<GameLevelCubit, int>(
          builder: (context, unlockedLevel) {
            String stageName = "المستوى الأول"; //S.of(context).firstLevel;
            return StageHeader(
              title: stageName,
              unlockedLevel: unlockedLevel,
              colorBG: colorLetter,
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
