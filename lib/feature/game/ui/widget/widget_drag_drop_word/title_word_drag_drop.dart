import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class TitleWordDragDrop extends StatelessWidget {
  const TitleWordDragDrop({super.key, required this.word});
  final String word;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(word, style: AppTextStyle.fontthick48(context)),

        SizedBox(height: 10.h),
        Text(
          S.of(context).instructionsDragWord,
          style: AppTextStyle.fontSemiBold16(context),
        ),
      ],
    );
  }
}
