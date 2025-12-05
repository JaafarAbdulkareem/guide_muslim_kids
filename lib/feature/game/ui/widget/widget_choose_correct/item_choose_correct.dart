import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_group_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/choose_correct_cubit/choose_correct_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_choose_correct/grid_word_choose_correct.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_choose_correct/question_choose_correct.dart';

class ItemChooseCorrect extends StatelessWidget {
  final ChooseCorrectGroupEntity data;
  final VoidCallback onGameCompleted;
  final bool isLastItem;

  const ItemChooseCorrect({
    super.key,
    required this.data,
    required this.onGameCompleted,
    required this.isLastItem,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChooseCorrectCubit(data.words),
      child: Builder(
        builder: (context) {
          return BlocConsumer<ChooseCorrectCubit, ChooseCorrectState>(
            listener: (context, state) {
              if (state is AnswerCorrect) {
                ShowNotification.showAnswerSnackBar(context, true);
              } else if (state is AnswerWrong) {
                ShowNotification.showAnswerSnackBar(context, false);
              } else if (state is GameFinished) {
                ShowNotification.showAnswerDialog(
                  context: context,
                  isCorrect: true,
                  onContinue: onGameCompleted,
                  isLastItem: isLastItem,
                );
              }
            },
            builder: (context, state) {
              // Extract the list of words regardless of the specific state type
              List<ChooseCorrectEntity> currentWords = [];
              if (state is GameInitial) currentWords = state.words;
              if (state is AnswerCorrect) currentWords = state.words;
              if (state is AnswerWrong) currentWords = state.words;
              if (state is GameFinished) currentWords = state.words;

              return Column(
                children: [
                  const SizedBox(height: 20),

                  // Question Card
                  QuestionChooseCorrect(question: data.instruction),

                  const SizedBox(height: 20),

                  // Grid of Words
                  Expanded(
                    child: GridWordChooseCorrect(currentWords: currentWords),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
