import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/constant_text.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/target_box.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class SecondLevelDropZones extends StatelessWidget {
  const SecondLevelDropZones({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppTextStyle.fontSemiBold16(context);
    final s = S.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDropZone(
            context,
            label: s.letterMadd,
            color: AppColor.dropZoneBGSakin,
            borderColor: AppColor.dropZoneFirst,
            type: LetterType.madd,
            symbol: Text(
              ConstantText.madd,
              textAlign: TextAlign.center,
              style: textStyle.copyWith(color: AppColor.dropZoneFirst),
            ),
          ),
          SizedBox(width: 16.w),
          _buildDropZone(
            context,
            label: s.letterNoMadd,
            color: AppColor.dropZoneBGMutaharrik,
            borderColor: AppColor.dropZoneSecond,

            type: LetterType.noMadd,
            symbol: Text(
              ConstantText.noMadd,
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
