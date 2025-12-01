import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';
import 'package:guide_muslim_kids/feature/game/two_button/logic/manage/cubit/question_two_button_cubit.dart';
import 'package:guide_muslim_kids/feature/game/two_button/widget/letter_container.dart';
import 'package:guide_muslim_kids/feature/game/two_button/widget/question_title.dart';
import 'package:guide_muslim_kids/feature/game/two_button/widget/two_answer_button.dart';

class ItemTwoButtons extends StatelessWidget {
  const ItemTwoButtons({
    super.key,
    required this.data,
    required this.onGameCompleted,
    required this.isLastItem,
  });
  final QuestionTwoButtonEntity data;
  final VoidCallback onGameCompleted;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => QuestionTwoButtonCubit(),
      child: Builder(
        builder: (context) {
          return BlocListener<QuestionTwoButtonCubit, QuestionTwoButtonState>(
            listener: (context, state) {
              if (state is QuizCorrect) {
                ShowNotification.showAnswerDialog(
                  context: context,
                  isCorrect: true,
                  onContinue: onGameCompleted,
                  isLastItem: isLastItem,
                );
              } else if (state is QuizWrong) {
                ShowNotification.showAnswerDialog(
                  context: context,
                  isCorrect: false,
                );
              }
            },
            child: Card(
              color: AppColor.questionCard,
              elevation: 8,
              margin: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Instruction Text
                    QuestionTitle(question: data.instruction),
                    const SizedBox(height: 20),

                    // The Letters Container
                    LetterContainer(letters: data.letters),
                    const SizedBox(height: 40),

                    // Buttons Row
                    TwoAnswerButton(question: data),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
