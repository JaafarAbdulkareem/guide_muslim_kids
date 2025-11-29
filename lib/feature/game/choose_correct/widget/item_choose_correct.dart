import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/choose_correct/logic/entities/choose_correct_entity.dart';
import 'package:guide_muslim_kids/feature/game/choose_correct/logic/manage/cubit/choose_correct_cubit.dart';
import 'package:guide_muslim_kids/feature/game/choose_correct/widget/grid_word_choose_correct.dart';
import 'package:guide_muslim_kids/feature/game/choose_correct/widget/question_choose_correct.dart';

class ItemChooseCorrect extends StatelessWidget {
  final String question;
  final List<ChooseCorrectEntity> words;

  const ItemChooseCorrect({
    super.key,
    required this.question,
    required this.words,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseCorrectCubit(words),
      child: Scaffold(
        body: SafeArea(
          // Use Builder to get a context that is a child of BlocProvider
          child: Builder(
            builder: (context) {
              return BlocConsumer<ChooseCorrectCubit, ChooseCorrectState>(
                listener: (context, state) {
                  if (state is AnswerCorrect) {
                    ShowNotification.showFeedbackSnackBar(context, true);
                  } else if (state is AnswerWrong) {
                    ShowNotification.showFeedbackSnackBar(context, false);
                  } else if (state is GameFinished) {
                    ShowNotification.showAnswerDialog(
                      context: context,
                      isCorrect: true,
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
                      QuestionChooseCorrect(question: question),

                      const SizedBox(height: 20),

                      // Grid of Words
                      Expanded(
                        child: GridWordChooseCorrect(
                          currentWords: currentWords,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
