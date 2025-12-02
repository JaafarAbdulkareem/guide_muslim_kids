import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/target_box.dart';

class SecondLevelDropZones extends StatelessWidget {
  const SecondLevelDropZones({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppTextStyle.fontSemiBold16(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDropZone(
            context,
            label: "حرف المد", //S.of(context).letterMadd
            color: AppColor.dropZoneBGSakin,
            borderColor: AppColor.dropZoneBorderSakin,
            type: LetterType.madd,
            symbol: Text(
              "ا - و - ي",
              style: textStyle.copyWith(color: AppColor.dropZoneBorderSakin),
            ),
          ),
          const SizedBox(width: 16),
          _buildDropZone(
            context,
            label: "ليس حرف مد", //S.of(context).letterNoMadd
            color: AppColor.dropZoneBGMutaharrik,
            borderColor: AppColor.dropZoneBorderMutaharrik,
            type: LetterType.noMadd,
            symbol: Text(
              "أ، ب، ت، ث، ج، ح، خ، د، ذ، ر، ز، س، ش، ص، ض، ط، ظ، ع، غ، ف، ق، ك، ل، م، ن، هـ، ء",
              style: textStyle.copyWith(
                color: AppColor.dropZoneBorderMutaharrik,
              ),
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
