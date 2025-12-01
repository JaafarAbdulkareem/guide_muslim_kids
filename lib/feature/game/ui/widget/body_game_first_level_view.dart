import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/data/data_game_first_level.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/core/widget/item_game_level.dart';
import 'package:guide_muslim_kids/core/widget/stage_header.dart';

class BodyGameFirstLevelView extends StatelessWidget {
  const BodyGameFirstLevelView({super.key});

  @override
  Widget build(BuildContext context) {
    final levels = getDataFirstLevel(context);

    return Column(
      children: [
        BlocBuilder<GameLevelCubit, int>(
          builder: (context, unlockedLevel) {
            String stageName = "المستوى الأول"; //S.of(context).firstLevel;
            return StageHeader(title: stageName, unlockedLevel: unlockedLevel);
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
