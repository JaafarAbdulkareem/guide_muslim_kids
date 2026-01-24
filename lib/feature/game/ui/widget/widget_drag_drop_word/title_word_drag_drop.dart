import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/widget/text_to_speech_widget.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class TitleWordDragDrop extends StatelessWidget {
  const TitleWordDragDrop({super.key, required this.word, required this.type});
  final String word;
  final ZonesType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextToSpeechWidget(
          textToSpeech: word,
          isLamShamsiya: type == ZonesType.shamsiya,
          child: Text(word, style: AppTextStyle.fontthick48(context)),
        ),
        SizedBox(height: 10.h),
        Text(
          S.of(context).instructionsDragWord,
          style: AppTextStyle.fontSemiBold16(context),
        ),
      ],
    );
  }
}
