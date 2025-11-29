import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/logic/entities/letter_item_entity.dart';
import 'package:guide_muslim_kids/feature/drap_drop_word/widget/char_letter_card.dart';

class DraggableLetterCard extends StatelessWidget {
  final LetterItemEntity letter;

  const DraggableLetterCard({super.key, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Draggable<LetterItemEntity>(
      data: letter,
      feedback: Material(
        color: Colors.transparent,
        child: CharLetterCard(char: letter.char, isDragging: true),
      ),
      childWhenDragging: Container(
        width: 130,
        height: 170,
        decoration: BoxDecoration(
          color: Colors.grey.shade200.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: CharLetterCard(char: letter.char),
    );
  }
}
