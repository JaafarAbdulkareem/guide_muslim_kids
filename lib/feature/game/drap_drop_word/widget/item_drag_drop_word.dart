import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/logic/entities/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/logic/manage/cubit/drap_drop_word_cubit.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/widget/card_drag_drop_word.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/widget/drop_zones.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/widget/title_word_drag_drop.dart';

class SortingGamePage extends StatelessWidget {
  const SortingGamePage({
    super.key,
    required this.levelData,
    required this.onGameCompleted,
    required this.isLastItem,
  });
  final DragDropEntity levelData;
  final VoidCallback onGameCompleted;
  final bool isLastItem;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DrapDropWordCubit(levelData: levelData),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return BlocConsumer<DrapDropWordCubit, DrapDropWordState>(
            listener: (context, state) {
              if (state is GameCompleted) {
                ShowNotification.showAnswerDialog(
                  context: context,
                  isCorrect: true,
                  onContinue: onGameCompleted,
                  isLastItem: isLastItem,
                );
              }
            },
            builder: (context, state) {
              final remainingLetters = context
                  .watch<DrapDropWordCubit>()
                  .remainingLetters;

              return Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.05),

                  // 1. Target Word
                  TitleWordDragDrop(word: levelData.word),
                  const Spacer(),

                  // 2. Card Stack
                  CardDragDropWord(remainingLetters: remainingLetters),

                  const Spacer(),

                  // 3. Drop Zones
                  DropZones(),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
