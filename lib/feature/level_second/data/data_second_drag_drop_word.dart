import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';

List<DragDropEntity> getDataSecondDragDropWord(BuildContext context) {
  final ZonesType typeMadd = ZonesType.madd;
  // ---- Group 1: نَاقَةٌ ----
  final DragDropEntity group1 = DragDropEntity(
    zoneType: typeMadd,
    word: 'نَاقَةٌ',
    letters: const [
      LetterItemEntity(id: '1', char: 'نَ', type: LetterType.noMadd),
      LetterItemEntity(id: '2', char: 'ا', type: LetterType.madd),
      LetterItemEntity(id: '3', char: 'قَ', type: LetterType.noMadd),
      LetterItemEntity(id: '4', char: 'ةٌ', type: LetterType.noMadd),
    ],
  );

  // ---- Group 2: فَاكِهَةٌ ----
  final DragDropEntity group2 = DragDropEntity(
    zoneType: typeMadd,
    word: 'فَاكِهَةٌ',
    letters: const [
      LetterItemEntity(id: '1', char: 'فَ', type: LetterType.noMadd),
      LetterItemEntity(id: '2', char: 'ا', type: LetterType.madd),
      LetterItemEntity(id: '3', char: 'كِ', type: LetterType.noMadd),
      LetterItemEntity(id: '4', char: 'هَ', type: LetterType.noMadd),
      LetterItemEntity(id: '5', char: 'ةٌ', type: LetterType.noMadd),
    ],
  );

  // ---- Group 3: يَسْمَعُونَ ----
  final DragDropEntity group3 = DragDropEntity(
    zoneType: typeMadd,
    word: 'يَسْمَعُونَ',
    letters: const [
      LetterItemEntity(id: '1', char: 'يَ', type: LetterType.noMadd),
      LetterItemEntity(id: '2', char: 'سْ', type: LetterType.noMadd),
      LetterItemEntity(id: '3', char: 'مَ', type: LetterType.noMadd),
      LetterItemEntity(id: '4', char: 'عُ', type: LetterType.noMadd),
      LetterItemEntity(id: '5', char: 'و', type: LetterType.madd),
      LetterItemEntity(id: '6', char: 'نَ', type: LetterType.noMadd),
    ],
  );

  // ---- Group 4: يَحْفَظُونَهُ ----
  final DragDropEntity group4 = DragDropEntity(
    zoneType: typeMadd,
    word: 'يَحْفَظُونَهُ',
    letters: const [
      LetterItemEntity(id: '1', char: 'يَ', type: LetterType.noMadd),
      LetterItemEntity(id: '2', char: 'حْ', type: LetterType.noMadd),
      LetterItemEntity(id: '3', char: 'فَ', type: LetterType.noMadd),
      LetterItemEntity(id: '4', char: 'ظُ', type: LetterType.noMadd),
      LetterItemEntity(id: '5', char: 'و', type: LetterType.madd),
      LetterItemEntity(id: '6', char: 'نَ', type: LetterType.noMadd),
      LetterItemEntity(id: '7', char: 'هُ', type: LetterType.noMadd),
    ],
  );

  // // ---- Group 4: يَتْلُونَهُ ----
  // final DragDropEntity group4 = DragDropEntity(
  //   zoneType: typeMadd,
  //   word: 'يَتْلُونَهُ',
  //   letters: const [
  //     LetterItemEntity(id: '1', char: 'يَ', type: LetterType.noMadd),
  //     LetterItemEntity(id: '2', char: 'تْ', type: LetterType.noMadd),
  //     LetterItemEntity(id: '3', char: 'لُ', type: LetterType.noMadd),
  //     LetterItemEntity(id: '4', char: 'و', type: LetterType.madd),
  //     LetterItemEntity(id: '5', char: 'نَ', type: LetterType.noMadd),
  //     LetterItemEntity(id: '6', char: 'هُ', type: LetterType.noMadd),
  //   ],
  // );

  // ---- Group 5: بَنِيّنَ ----
  final DragDropEntity group5 = DragDropEntity(
    zoneType: typeMadd,
    word: 'بَنِينَ',
    letters: const [
      LetterItemEntity(id: '1', char: 'بَ', type: LetterType.noMadd),
      LetterItemEntity(id: '2', char: 'نِ', type: LetterType.noMadd),
      LetterItemEntity(id: '3', char: 'ي', type: LetterType.madd),
      LetterItemEntity(id: '4', char: 'نَ', type: LetterType.noMadd),
    ],
  );

  // ---- Group 6: سَنِيّنَ ----
  final DragDropEntity group6 = DragDropEntity(
    zoneType: typeMadd,
    word: 'سِنِينَ',
    letters: const [
      LetterItemEntity(id: '1', char: 'سِ', type: LetterType.noMadd),
      LetterItemEntity(id: '2', char: 'نِ', type: LetterType.noMadd),
      LetterItemEntity(id: '3', char: 'ي', type: LetterType.madd),
      LetterItemEntity(id: '4', char: 'نَ', type: LetterType.noMadd),
    ],
  );

  return [group1, group2, group3, group4, group5, group6];
}
