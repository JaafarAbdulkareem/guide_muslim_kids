import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/choose_correct/logic/entities/choose_correct_entity.dart';
import 'package:guide_muslim_kids/feature/choose_correct/logic/entities/choose_correct_group_entity.dart';

List<ChooseCorrectGroupEntity> getDataChooseWords(BuildContext context) {
  final List<ChooseCorrectEntity> group1 = [
    const ChooseCorrectEntity(text: "اُتْقِنُ", isCorrect: true),
    const ChooseCorrectEntity(text: "أُكِلَ", isCorrect: false),
    const ChooseCorrectEntity(text: "أَحْضُرُ", isCorrect: true),
    const ChooseCorrectEntity(text: "حَطُبُكَ", isCorrect: false),
    const ChooseCorrectEntity(text: "لَبَنُكَ", isCorrect: false),
    const ChooseCorrectEntity(text: "خَيْرُكَ", isCorrect: true),
  ];

  final List<ChooseCorrectEntity> group2 = [
    const ChooseCorrectEntity(text: "ثَعْلَبُ", isCorrect: true),
    const ChooseCorrectEntity(text: "أَرْضُكَ", isCorrect: true),
    const ChooseCorrectEntity(text: "جَمَلُكَ", isCorrect: false),
    const ChooseCorrectEntity(text: "فَلَهُمْ", isCorrect: true),
    const ChooseCorrectEntity(text: "وَلَدُكَ", isCorrect: false),
    const ChooseCorrectEntity(text: "وَرَقُكَ", isCorrect: false),
  ];

  final List<ChooseCorrectEntity> group3 = [
    const ChooseCorrectEntity(text: "بِحِثْكِ", isCorrect: true),
    const ChooseCorrectEntity(text: "قَبْلِهِمْ", isCorrect: true),
    const ChooseCorrectEntity(text: "رَحْمَتَ", isCorrect: true),
    const ChooseCorrectEntity(text: "وَرَقُكَ", isCorrect: false),
    const ChooseCorrectEntity(text: "غُسِلَ", isCorrect: false),
    const ChooseCorrectEntity(text: "يَدُكَ", isCorrect: false),
  ];
  final List<ChooseCorrectGroupEntity> data = [
    ChooseCorrectGroupEntity(words: group1),
    ChooseCorrectGroupEntity(words: group2),
    ChooseCorrectGroupEntity(words: group3),
  ];

  return data;
}
