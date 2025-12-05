import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

import 'package:guide_muslim_kids/core/utils/constant_text.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/target_box.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class FirstLevelDropZones extends StatelessWidget {
  const FirstLevelDropZones({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppTextStyle.fontSemiBold48(context);
    final s = S.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDropZone(
            context,
            label: s.letterSakin,
            color: AppColor.dropZoneBGSakin,
            borderColor: AppColor.dropZoneFirst,
            type: LetterType.sakin,
            symbol: Text(
              ConstantText.sakin,
              textAlign: TextAlign.center,
              style: textStyle.copyWith(color: AppColor.dropZoneFirst),
            ),
          ),
          const SizedBox(width: 16),
          _buildDropZone(
            context,
            label: s.letterMutaharrik,
            color: AppColor.dropZoneBGMutaharrik,
            borderColor: AppColor.dropZoneSecond,

            type: LetterType.mutaharrik,
            symbol: Text(
              ConstantText.mutaharrik,
              textAlign: TextAlign.center,
              style: textStyle.copyWith(color: AppColor.dropZoneSecond),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropZone(
    BuildContext context, {
    required String label,
    required Color color,
    required Color borderColor,
    required LetterType type,
    required Widget symbol,
  }) {
    return Expanded(
      child: TargetBox(
        label: label,
        color: color,
        borderColor: borderColor,
        targetType: type,
        symbol: symbol,
      ),
    );
  }
}
