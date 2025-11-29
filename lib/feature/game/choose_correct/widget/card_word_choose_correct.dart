import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/game/choose_correct/logic/entities/choose_correct_entity.dart';

class CardWordChooseCorrect extends StatelessWidget {
  final ChooseCorrectEntity word;
  final VoidCallback onTap;

  const CardWordChooseCorrect({
    super.key,
    required this.word,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // If the word is found, we style it differently (e.g., green/disabled)
    final isDone = word.isFound;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isDone ? AppColor.correctBorder.withAlpha(80) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isDone ? AppColor.correctBorder : AppColor.lettersBorder,
            width: isDone ? 3 : 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: isDone
              ? const Icon(
                  AppIcon.check,
                  color: AppColor.correctBorder,
                  size: 40,
                )
              : Text(
                  word.text,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.fontSemiBold32(context),
                ),
        ),
      ),
    );
  }
}
