import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class LetterContainer extends StatelessWidget {
  const LetterContainer({super.key, required this.letters});

  final String letters;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: BoxDecoration(
        color: AppColor.lettersBackground,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColor.lettersBorder),
      ),
      child: Text(letters, style: AppTextStyle.fontthick32(context)),
    );
  }
}
