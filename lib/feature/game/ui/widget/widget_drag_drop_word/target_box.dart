import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/drag_drop_word_cubit/drag_drop_word_cubit.dart';

class TargetBox extends StatelessWidget {
  final String label;
  final Color color;
  final Color borderColor;
  final LetterType targetType;
  final Widget symbol;
  const TargetBox({
    super.key,
    required this.label,
    required this.color,
    required this.borderColor,
    required this.targetType,
    required this.symbol,
  });

  @override
  Widget build(BuildContext context) {
    return DragTarget<LetterItemEntity>(
      onWillAcceptWithDetails: (details) => true,
      onAcceptWithDetails: (details) {
        context.read<DragDropWordCubit>().checkAnswer(details.data, targetType);
      },
      builder: (context, candidateData, rejectedData) {
        final isHovering = candidateData.isNotEmpty;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: MediaQuery.of(context).size.width >= 600 ? 0.45.sh : 0.21.sh,
          decoration: BoxDecoration(
            color: isHovering ? borderColor.withValues(alpha: 0.3) : color,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: isHovering
                  ? borderColor
                  : borderColor.withValues(alpha: 0.4),
              width: isHovering ? 3 : 2,
            ),
            boxShadow: [
              BoxShadow(
                color: borderColor.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: Offset(0, 0.006.sh),
              ),
            ],
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  symbol,
                  SizedBox(height: 0.015.sh),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.fontBold20(
                      context,
                    ).copyWith(color: borderColor.withValues(alpha: 0.9)),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
