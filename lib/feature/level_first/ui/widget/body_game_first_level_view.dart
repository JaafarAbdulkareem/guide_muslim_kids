import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/item_level_stages.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/stage_header.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class BodyGameFirstLevelView extends StatelessWidget {
  const BodyGameFirstLevelView({super.key, required this.levels});
  final List<GameLevelEntity> levels;
  @override
  Widget build(BuildContext context) {
    final Color colorLetter = AppColor.lettersText1;
    final Color colorBGItem = AppColor.bgLevelItem1;
    final Color colorShadowItem = AppColor.shadowLevelItem1;
    return Column(
      children: [
        BlocBuilder<GameLevelCubit, int>(
          builder: (context, unlockedLevel) {
            String stageName = S.of(context).firstLevel;
            return StageHeader(
              title: stageName,
              unlockedLevel: unlockedLevel,
              colorBG: colorLetter,
              lengthData: levels.length,
              previousLevelsLength: 0,
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

                  return ItemLevelStages(
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
