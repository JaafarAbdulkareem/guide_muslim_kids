import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/widget/text_to_speech_widget.dart';

class LetterContainer extends StatelessWidget {
  const LetterContainer({
    super.key,
    required this.letters,
    required this.textToSpeech,
  });

  final String letters;
  final String textToSpeech;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),

      decoration: BoxDecoration(
        color: AppColor.lettersBackground,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColor.lettersBorder),
      ),
      child: TextToSpeechWidget(
        textToSpeech: textToSpeech,
        child: Text(letters, style: AppTextStyle.fontthick32(context)),
      ),
    );
  }
}
