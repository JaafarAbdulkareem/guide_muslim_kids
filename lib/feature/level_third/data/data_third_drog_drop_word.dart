import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';

List<DragDropEntity> getDataThirdDragDropWord(BuildContext context) {
  ZonesType type = ZonesType.shaddah;
  ZonesType type2 = ZonesType.shamsiya;
  // ---- Group 1 ---- جَدٌّ
  final DragDropEntity group1 = DragDropEntity(
    zoneType: type,
    word: 'جَدٌّ',
    letters: const [
      LetterItemEntity(id: '1', char: 'جَ', type: LetterType.noShaddah),
      LetterItemEntity(id: '2', char: 'دٌّ', type: LetterType.shaddah),
    ],
  );

  // ---- Group 2 ---- أُمٌّ
  final DragDropEntity group2 = DragDropEntity(
    zoneType: type,
    word: 'أُمٌّ',
    letters: const [
      LetterItemEntity(id: '1', char: 'أُ', type: LetterType.noShaddah),
      LetterItemEntity(id: '2', char: 'مٌّ', type: LetterType.shaddah),
    ],
  );

  // ---- Group 3 ---- قِطٌّ
  final DragDropEntity group3 = DragDropEntity(
    zoneType: type,
    word: 'قِطٌّ',
    letters: const [
      LetterItemEntity(id: '1', char: 'قِ', type: LetterType.noShaddah),
      LetterItemEntity(id: '2', char: 'طٌّ', type: LetterType.shaddah),
    ],
  );

  // ---- Group 4 ---- عَرَبِيٌّ
  final DragDropEntity group4 = DragDropEntity(
    zoneType: type,
    word: 'عَرَبِيٌّ',
    letters: const [
      LetterItemEntity(id: '1', char: 'عَ', type: LetterType.shamsiya),
      LetterItemEntity(id: '2', char: 'رَ', type: LetterType.qamariya),
      LetterItemEntity(id: '3', char: 'بِ', type: LetterType.noShaddah),
      LetterItemEntity(id: '4', char: 'يٌّ', type: LetterType.shaddah),
    ],
  );
  // -------- Group 5 --------
  final DragDropEntity group5 = DragDropEntity(
    zoneType: type2,
    word: '',
    letters: const [
      LetterItemEntity(id: '1', char: 'الغراب', type: LetterType.qamariya),
      LetterItemEntity(id: '2', char: 'الزهور', type: LetterType.shamsiya),
      LetterItemEntity(id: '3', char: 'القرش', type: LetterType.qamariya),
      LetterItemEntity(id: '4', char: 'النيازك', type: LetterType.shamsiya),
      LetterItemEntity(id: '5', char: 'الوحل', type: LetterType.qamariya),
      LetterItemEntity(id: '6', char: 'الدكتور', type: LetterType.shamsiya),
    ],
  );

  // -------- Group 6 --------
  final DragDropEntity group6 = DragDropEntity(
    zoneType: type2,
    word: '',
    letters: const [
      LetterItemEntity(id: '1', char: 'الصافي', type: LetterType.shamsiya),
      LetterItemEntity(id: '2', char: 'اليمن', type: LetterType.qamariya),
      LetterItemEntity(id: '3', char: 'الهروب', type: LetterType.qamariya),
      LetterItemEntity(id: '4', char: 'الأرنب', type: LetterType.qamariya),
      LetterItemEntity(id: '5', char: 'التنور', type: LetterType.shamsiya),
      LetterItemEntity(id: '6', char: 'الساعة', type: LetterType.shamsiya),
    ],
  );

  return [group1, group2, group3, group4, group5, group6];
}
