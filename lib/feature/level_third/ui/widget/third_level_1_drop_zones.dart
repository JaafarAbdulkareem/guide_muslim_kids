import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/constant_text.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/target_box.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class ThirdLevel1DropZones extends StatelessWidget {
  const ThirdLevel1DropZones({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = AppTextStyle.fontSemiBold48(context);
    final s = S.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDropZone(
            context,
            label: s.letterShaddah,
            color: AppColor.dropZoneBGSakin,
            borderColor: AppColor.dropZoneFirst,
            type: LetterType.shaddah,
            symbol: Text(
              ConstantText.shaddah,
              textAlign: TextAlign.center,
              style: textStyle.copyWith(color: AppColor.dropZoneFirst),
            ),
          ),
          SizedBox(width: 16.w),
          _buildDropZone(
            context,
            label: s.letterNoShaddah,
            color: AppColor.dropZoneBGMutaharrik,
            borderColor: AppColor.dropZoneSecond,
            type: LetterType.noShaddah,
            symbol: Text(
              ConstantText.noShaddah,
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
