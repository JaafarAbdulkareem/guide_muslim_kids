import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class QuestionChooseCorrect extends StatelessWidget {
  const QuestionChooseCorrect({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
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
          SizedBox(width: MediaQuery.of(context).size.width * 0.04),
          Icon(AppIcon.question,
              color: AppColor.lettersText1,
              size: MediaQuery.of(context).size.width * 0.08),
        ],
      ),
    );
  }
}
