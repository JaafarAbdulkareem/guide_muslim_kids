import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/target_box.dart';

class ThirdLevel1DropZones extends StatelessWidget {
  const ThirdLevel1DropZones({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppTextStyle.fontSemiBold48(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDropZone(
            context,
            label: "حرف مشدد", //S.of(context).shaddah
            color: AppColor.dropZoneBGSakin,
            borderColor: AppColor.dropZoneBorderSakin,
            type: LetterType.shaddah,
            symbol: Text(
              "ـَّ ـُّ ـِّ", //ConstantText.shaddah,
              style: textStyle.copyWith(color: AppColor.dropZoneBorderSakin),
            ),
          ),
          const SizedBox(width: 16),
          _buildDropZone(
            context,
            label: "ليس حرفاً مشدداً", //S.of(context).noShaddah
            color: AppColor.dropZoneBGMutaharrik,
            borderColor: AppColor.dropZoneBorderMutaharrik,
            type: LetterType.noShaddah,
            symbol: Text(
              "ـَ ـُ ـِ ـْ", //ConstantText.noShaddah,
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
