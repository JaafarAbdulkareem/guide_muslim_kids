import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/question_two_button_cubit/question_two_button_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_two_option/letter_container.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_two_option/question_title.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_two_option/two_answer_option.dart';

class ItemTwoOption extends StatelessWidget {
  const ItemTwoOption({
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
              margin: EdgeInsets.all(16.r),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40.h,
                  horizontal: 20.w,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Instruction Text
                    QuestionTitle(question: data.instruction),
                    SizedBox(height: 20.h),

                    // The Letters Container
                    LetterContainer(letters: data.letters),
                    SizedBox(height: 40.h),

                    // Buttons Row
                    TwoAnswerOption(question: data),
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
