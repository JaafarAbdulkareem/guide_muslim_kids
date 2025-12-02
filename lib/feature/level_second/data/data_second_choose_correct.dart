import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_group_entity.dart';

List<ChooseCorrectGroupEntity> getDataSecondChooseWords(BuildContext context) {
  // ---- Group 1 ----
  final List<ChooseCorrectEntity> group1 = [
    const ChooseCorrectEntity(text: "نَأْكُلُ", isCorrect: false),
    const ChooseCorrectEntity(text: "طَعَامُ", isCorrect: true),
    const ChooseCorrectEntity(text: "أَسْنَانَكَ", isCorrect: true),
    const ChooseCorrectEntity(text: "يَجْمَعُ", isCorrect: false),
    const ChooseCorrectEntity(text: "أَمَامَكَ", isCorrect: true),
    const ChooseCorrectEntity(text: "أَنْظُرُ", isCorrect: false),
  ];

  // ---- Group 2 ----
  final List<ChooseCorrectEntity> group2 = [
    const ChooseCorrectEntity(text: "لَأرْكَضَ", isCorrect: false),
    const ChooseCorrectEntity(text: "قُلُوبَكُمْ", isCorrect: true),
    const ChooseCorrectEntity(text: "يُوعِظُ", isCorrect: true),
    const ChooseCorrectEntity(text: "بَقَرَةُ", isCorrect: false),
    const ChooseCorrectEntity(text: "فَيَتُوبُ", isCorrect: true),
    const ChooseCorrectEntity(text: "فَأْرُ", isCorrect: false),
  ];

  // ---- Group 3 ----
  final List<ChooseCorrectEntity> group3 = [
    const ChooseCorrectEntity(text: "دِينَكَ", isCorrect: true),
    const ChooseCorrectEntity(text: "يَهْرُبُ", isCorrect: false),
    const ChooseCorrectEntity(text: "نَذِيرُ", isCorrect: true),
    const ChooseCorrectEntity(text: "يَأَسُ", isCorrect: false),
    const ChooseCorrectEntity(text: "بِأَضْفَرِهِ", isCorrect: false),
    const ChooseCorrectEntity(text: "تُخْفِي", isCorrect: true),
  ];

  // ---- Group 4 ----
  final List<ChooseCorrectEntity> group4 = [
    const ChooseCorrectEntity(text: "أَزْهَارٌ", isCorrect: true),
    const ChooseCorrectEntity(text: "يَكْتُبُ", isCorrect: false),
    const ChooseCorrectEntity(text: "شُجَاعٌ", isCorrect: true),
    const ChooseCorrectEntity(text: "يَعْمَلُونَ", isCorrect: false),
    const ChooseCorrectEntity(text: "حَقْلٌ", isCorrect: true),
    const ChooseCorrectEntity(text: "يُشَاهِدُ", isCorrect: false),
  ];

  // ---- Group 5 ----
  final List<ChooseCorrectEntity> group5 = [
    const ChooseCorrectEntity(text: "مَزْرَعَةً", isCorrect: true),
    const ChooseCorrectEntity(text: "يَنْزِلُ", isCorrect: false),
    const ChooseCorrectEntity(text: "ظَبِيٌّ", isCorrect: true),
    const ChooseCorrectEntity(text: "يَسْبَحُ", isCorrect: false),
    const ChooseCorrectEntity(text: "غَرْقًا", isCorrect: true),
    const ChooseCorrectEntity(text: "سَبْعٍ", isCorrect: true),
  ];

  // ---- Group 6 ----
  final List<ChooseCorrectEntity> group6 = [
    const ChooseCorrectEntity(text: "بَلَدٍ", isCorrect: true),
    const ChooseCorrectEntity(text: "أَقَابِلُ", isCorrect: false),
    const ChooseCorrectEntity(text: "صُنْدُوقٌ", isCorrect: true),
    const ChooseCorrectEntity(text: "جَرُوٌّ", isCorrect: true),
    const ChooseCorrectEntity(text: "فَرِسٍ", isCorrect: true),
    const ChooseCorrectEntity(text: "ثُوماً", isCorrect: true),
  ];

  final List<ChooseCorrectGroupEntity> data = [
    ChooseCorrectGroupEntity(words: group1),
    ChooseCorrectGroupEntity(words: group2),
    ChooseCorrectGroupEntity(words: group3),
    ChooseCorrectGroupEntity(words: group4),
    ChooseCorrectGroupEntity(words: group5),
    ChooseCorrectGroupEntity(words: group6),
  ];

  return data;
}
