import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/item_game_level.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/stage_header.dart';
import 'package:guide_muslim_kids/feature/level_third/data/data_game_third_level.dart';

class BodyGameThirdLevelView extends StatelessWidget {
  const BodyGameThirdLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    final levels = getDataGameThirdLevel(context);
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
