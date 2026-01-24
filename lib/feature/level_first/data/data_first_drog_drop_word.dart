import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';

List<DragDropEntity> getDataFirstDragDropWord(BuildContext context) {
  final ZonesType typeSakin = ZonesType.sakin;
  // ---- Group 1 ----
  final DragDropEntity group1 = DragDropEntity(
    zoneType: typeSakin,
    word: 'نَسْتَمِعْ',
    letters: const [
      LetterItemEntity(id: '1', char: 'نَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '2', char: 'سْ', type: LetterType.sakin),
      LetterItemEntity(id: '3', char: 'تَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '4', char: 'مِ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '5', char: 'عْ', type: LetterType.sakin),
    ],
  );

  // ---- Group 2 ----
  final DragDropEntity group2 = DragDropEntity(
    zoneType: typeSakin,
    word: 'يَكْسِبُ',
    letters: const [
      LetterItemEntity(id: '1', char: 'يَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '2', char: 'كْ', type: LetterType.sakin),
      LetterItemEntity(id: '3', char: 'سِ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '4', char: 'بُ', type: LetterType.mutaharrik),
    ],
  );

  // ---- Group 3 ----
  final DragDropEntity group3 = DragDropEntity(
    zoneType: typeSakin,
    word: 'فَسَوْفَ',
    letters: const [
      LetterItemEntity(id: '1', char: 'فَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '2', char: 'سَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '3', char: 'وْ', type: LetterType.sakin),
      LetterItemEntity(id: '4', char: 'فَ', type: LetterType.mutaharrik),
    ],
  );

  // ---- Group 4 ----
  final DragDropEntity group4 = DragDropEntity(
    zoneType: typeSakin,
    word: 'نَسْتَحْوِذْ',
    letters: const [
      LetterItemEntity(id: '1', char: 'نَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '2', char: 'سْ', type: LetterType.sakin),
      LetterItemEntity(id: '3', char: 'تَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '4', char: 'حْ', type: LetterType.sakin),
      LetterItemEntity(id: '5', char: 'وِ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '6', char: 'ذْ', type: LetterType.sakin),
    ],
  );

  // ---- Group 5 ----
  final DragDropEntity group5 = DragDropEntity(
    zoneType: typeSakin,
    word: 'يُدْعَوْنَ',
    letters: const [
      LetterItemEntity(id: '1', char: 'يُ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '2', char: 'دْ', type: LetterType.sakin),
      LetterItemEntity(id: '3', char: 'عَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '4', char: 'وْ', type: LetterType.sakin),
      LetterItemEntity(id: '5', char: 'نَ', type: LetterType.mutaharrik),
    ],
  );

  // ---- Group 6 ----
  final DragDropEntity group6 = DragDropEntity(
    zoneType: typeSakin,
    word: 'أَسْلَمْتُمْ',
    letters: const [
      LetterItemEntity(id: '1', char: 'أَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '2', char: 'سْ', type: LetterType.sakin),
      LetterItemEntity(id: '3', char: 'لَ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '4', char: 'مْ', type: LetterType.sakin),
      LetterItemEntity(id: '5', char: 'تُ', type: LetterType.mutaharrik),
      LetterItemEntity(id: '6', char: 'مْ', type: LetterType.sakin),
    ],
  );

  final List<DragDropEntity> data = [
    group1,
    group2,
    group3,
    group4,
    group5,
    group6,
  ];
  return data;
}
