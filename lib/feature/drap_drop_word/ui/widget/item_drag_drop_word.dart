import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/logic/entities/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/logic/manage/cubit/drap_drop_word_cubit.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/ui/widget/card_drag_drop_word.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/ui/widget/drop_zones.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/ui/widget/title_word_drag_drop.dart';

class SortingGamePage extends StatelessWidget {
  const SortingGamePage({super.key, required this.levelData});
  final DragDropEntity levelData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return BlocConsumer<DrapDropWordCubit, DrapDropWordState>(
              listener: (context, state) {
                if (state is GameCompleted) {
                  // _showCongratulationDialog(context);
                }
              },
              builder: (context, state) {
                // Determine if we show content or loading
                // Since we start with GamePlaying, this is usually safe.

                // Watch the remaining letters from the Cubit directly
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
      ),
    );
  }
}
