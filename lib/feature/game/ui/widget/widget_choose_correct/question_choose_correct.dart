import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class QuestionChooseCorrect extends StatelessWidget {
  const QuestionChooseCorrect({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.lettersBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.lettersBorder, width: 2),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              question,
              style: AppTextStyle.fontBold24(
                context,
              ).copyWith(color: AppColor.lettersText1),
            ),
          ),
          const SizedBox(width: 15),
          const Icon(Icons.help_outline, color: AppColor.lettersText1, size: 30),
        ],
      ),
    );
  }
}
