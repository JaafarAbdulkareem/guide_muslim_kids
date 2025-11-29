import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({super.key, required this.question});

  final String question;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(question, style: AppTextStyle.fontBold24(context)),
    );
  }
}
