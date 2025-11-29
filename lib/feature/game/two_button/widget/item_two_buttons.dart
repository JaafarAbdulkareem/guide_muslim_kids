import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/two_button/logic/entities/question_two_button_entity.dart';
import 'package:guide_muslim_kids/feature/game/two_button/logic/manage/cubit/question_two_button_cubit.dart';
import 'package:guide_muslim_kids/feature/game/two_button/widget/letter_container.dart';
import 'package:guide_muslim_kids/feature/game/two_button/widget/question_title.dart';
import 'package:guide_muslim_kids/feature/game/two_button/widget/two_answer_button.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    // We provide the Cubit to the widget tree here
    return BlocProvider(
      create: (context) => QuestionTwoButtonCubit(),
      child: const Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: ItemTwoButtons(),
          ),
        ),
      ),
    );
  }
}

class ItemTwoButtons extends StatelessWidget {
  const ItemTwoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the question data here (or pass it in from a repository)
    const question = QuestionTwoButtonEntity(
      instruction: "صل بين الحروف",
      letters: "غ - س - ل",
      optionA: "غسل", // Correct
      optionB: "غس ل", // Wrong
      correctOption: "غسل",
    );

    return BlocListener<QuestionTwoButtonCubit, QuestionTwoButtonState>(
      listener: (context, state) {
        if (state is QuizCorrect) {
          ShowNotification.showAnswerDialog(context: context, isCorrect: true);
        } else if (state is QuizWrong) {
          ShowNotification.showAnswerDialog(context: context, isCorrect: false);
        }
      },
      child: Card(
        color: AppColor.questionCard,
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Instruction Text
              QuestionTitle(question: question.instruction),
              const SizedBox(height: 20),

              // The Letters Container
              LetterContainer(letters: question.letters),
              const SizedBox(height: 40),

              // Buttons Row
              TwoAnswerButton(question: question),
            ],
          ),
        ),
      ),
    );
  }
}
