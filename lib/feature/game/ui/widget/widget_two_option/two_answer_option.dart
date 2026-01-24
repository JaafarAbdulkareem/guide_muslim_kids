import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_option_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/question_two_option_cubit/question_two_option_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_two_option/answer_button.dart';

class TwoAnswerOption extends StatelessWidget {
  const TwoAnswerOption({super.key, required this.question});

  final QuestionTwoOptionEntity question;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Button 1 (Correct in this specific data example)
        AnswerButton(
          text: question.optionA,
          onTap: () => context.read<QuestionTwoOptionCubit>().checkAnswer(
            question.optionA,
            question,
          ),
        ),

        // Button 2 (Wrong in this specific data example)
        AnswerButton(
          text: question.optionB,
          onTap: () => context.read<QuestionTwoOptionCubit>().checkAnswer(
            question.optionB,
            question,
          ),
        ),
      ],
    );
  }
}
