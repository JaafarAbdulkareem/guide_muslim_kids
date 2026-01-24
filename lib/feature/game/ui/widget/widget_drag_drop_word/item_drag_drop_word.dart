import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/drag_drop_word_cubit/drag_drop_word_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/card_drag_drop_word.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/choose_drop_zones.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/title_word_drag_drop.dart';

class ItemDragDropWord extends StatelessWidget {
  const ItemDragDropWord({
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
      create: (_) => DragDropWordCubit(levelData: levelData),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return BlocConsumer<DragDropWordCubit, DragDropWordState>(
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
                  .watch<DragDropWordCubit>()
                  .remainingLetters;

              return Column(
                children: [
                  SizedBox(height: constraints.maxHeight * 0.05),

                  // 1. Target Word
                  TitleWordDragDrop(
                    word: levelData.word,
                    type: levelData.zoneType,
                  ),
                  const Spacer(),

                  // 2. Card Stack
                  Expanded(
                    flex: 6,
                    child: CardDragDropWord(remainingLetters: remainingLetters),
                  ),

                  const Spacer(),

                  // 3. Drop Zones
                  ChooseDropZones(zoneType: levelData.zoneType),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
