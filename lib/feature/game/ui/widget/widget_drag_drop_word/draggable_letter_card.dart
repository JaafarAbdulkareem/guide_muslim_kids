import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/char_letter_card.dart';

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
        //   width: 130,
        // height: 170,
        // width: MediaQuery.of(context).size.width >= 600 ? 250.w : 110.w,
        // height: MediaQuery.of(context).size.width >= 600 ? 350.h : 300,
        // constraints: MediaQuery.of(context).size.width < 600
        //     ? BoxConstraints(minHeight: 0.25.sh)
        //     : null,
        decoration: BoxDecoration(
          color: Colors.grey.shade200.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: CharLetterCard(char: letter.char),
    );
  }
}
