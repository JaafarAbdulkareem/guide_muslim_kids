import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class TitleWordDragDrop extends StatelessWidget {
  const TitleWordDragDrop({super.key, required this.word});
  final String word;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(word, style: AppTextStyle.fontthick48(context)),

        const SizedBox(height: 10),
        Text(
          "اسحب البطاقة العلوية إلى الصندوق الصحيح",
          style: AppTextStyle.fontSemiBold16(context),
        ),
      ],
    );
  }
}
