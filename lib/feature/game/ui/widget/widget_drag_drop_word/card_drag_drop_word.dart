import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/draggable_letter_card.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/char_letter_card.dart';

class CardDragDropWord extends StatelessWidget {
  const CardDragDropWord({super.key, required this.remainingLetters});
  final List<LetterItemEntity> remainingLetters;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      width: 200,
      child: remainingLetters.isEmpty
          ? _buildEmptyState(context)
          : _buildCardStack(remainingLetters),
    );
  }

  Widget _buildCardStack(List<LetterItemEntity> letters) {
    return Stack(
      alignment: Alignment.center,
      children: letters.asMap().entries.map((entry) {
        final index = entry.key;
        final letter = entry.value;
        final isTop = index == letters.length - 1;

        // Visual Stacking Math
        final reverseIndex = letters.length - 1 - index;
        final offsetValue = reverseIndex * 8.0;
        final scaleValue = 1.0 - (reverseIndex * 0.05);

        return Positioned(
          top: offsetValue + 20,
          child: Transform.scale(
            scale: scaleValue,
            child: isTop
                ? DraggableLetterCard(letter: letter)
                : CharLetterCard(char: letter.char, isBack: true),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            AppIcon.check,
            size: 80,
            color: AppColor.lettersText.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 10),
          Text(
            "ممتاز!",
            style: AppTextStyle.fontBold24(
              context,
            ).copyWith(color: AppColor.lettersText.withValues(alpha: 0.8)),
          ),
        ],
      ),
    );
  }
}
