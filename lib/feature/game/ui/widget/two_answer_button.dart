import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/question_two_button_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/cubit/question_two_button_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/answer_button.dart';

class TwoAnswerButton extends StatelessWidget {
  const TwoAnswerButton({super.key, required this.question});

  final QuestionTwoButtonEntity question;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Button 1 (Correct in this specific data example)
        AnswerButton(
          text: question.optionA,
          onTap: () => context.read<QuestionTwoButtonCubit>().checkAnswer(
            question.optionA,
            question,
          ),
        ),

        // Button 2 (Wrong in this specific data example)
        AnswerButton(
          text: question.optionB,
          onTap: () => context.read<QuestionTwoButtonCubit>().checkAnswer(
            question.optionB,
            question,
          ),
        ),
      ],
    );
  }
}
