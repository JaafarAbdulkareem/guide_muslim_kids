import 'package:flutter/material.dart';
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
    final textColor = isBack ? Colors.grey.shade400 : AppColor.lettersText;
    final double elevation = isDragging ? 12 : (isBack ? 0 : 5);
    final scale = isDragging ? 1.1 : 1.0;

    return Transform.scale(
      scale: scale,
      child: Container(
        width: 130,
        height: 170,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isDragging ? AppColor.dragging : textColor,
            width: isBack ? 1 : 2,
          ),
          boxShadow: [
            if (!isBack)
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: elevation,
                offset: const Offset(0, 4),
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
