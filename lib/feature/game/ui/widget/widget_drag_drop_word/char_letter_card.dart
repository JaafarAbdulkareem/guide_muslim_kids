import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class CharLetterCard extends StatelessWidget {
  final String char;
  final bool isBack;
  final bool isDragging;

  const CharLetterCard({
    super.key,
    required this.char,
    this.isBack = false,
    this.isDragging = false,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = isBack ? Colors.grey.shade100 : Colors.white;
    final textColor = isBack ? Colors.grey.shade400 : AppColor.lettersText1;
    final double elevation = isDragging ? 12 : (isBack ? 0 : 5);
    final scale = isDragging ? 1.1 : 1.0;

    return Transform.scale(
      scale: scale,
      child: Container(
        //  width: 130,
        // height: 170,
        width: MediaQuery.of(context).size.width >= 600 ? 250.w : 110.w,
        height: MediaQuery.of(context).size.width >= 600 ? 350.h : null,
        constraints: MediaQuery.of(context).size.width < 600
            ? BoxConstraints(minHeight: 0.225.sh)
            // ? BoxConstraints(minHeight: 0.25.sh)
            : null,
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isDragging ? AppColor.dragging : textColor,
            width: isBack ? 1.w : 2.w,
          ),
          boxShadow: [
            if (!isBack)
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: elevation.r,
                offset: Offset(0, 4.h),
              ),
          ],
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              char,
              style: AppTextStyle.fontBold65(context).copyWith(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
