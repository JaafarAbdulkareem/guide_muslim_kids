import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_group_entity.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<ChooseCorrectGroupEntity> getDataThirdChooseWords(BuildContext context) {
  final s = S.of(context);
  final String instructionShadda = s.instructionThirdChooseCorrect;
  final String instructionShamsiya = s.instructionThirdTwo1ChooseCorrect;
  final String instructionQamariya = s.instructionThirdTwo2ChooseCorrect;

  final List<ChooseCorrectEntity> group1 = [
    const ChooseCorrectEntity(text: "رَبُّكُم", isCorrect: true),
    const ChooseCorrectEntity(text: "يَكْتُبُونَ", isCorrect: false),
    const ChooseCorrectEntity(text: "غَرَّهُمْ", isCorrect: true),
    const ChooseCorrectEntity(text: "أُوْلَى", isCorrect: false),
    const ChooseCorrectEntity(text: "مَحَرَّم", isCorrect: true),
    const ChooseCorrectEntity(text: "هُمُومَكْ", isCorrect: false),
  ];

  final List<ChooseCorrectEntity> group2 = [
    const ChooseCorrectEntity(text: "أَمَانِيَّ", isCorrect: true),
    const ChooseCorrectEntity(text: "تَمَسَّنَ", isCorrect: true),
    const ChooseCorrectEntity(text: "بِلادَنَا", isCorrect: false),
    const ChooseCorrectEntity(text: "ذِلَّةٍ", isCorrect: true),
    const ChooseCorrectEntity(text: "سَهَامٍ", isCorrect: false),
    const ChooseCorrectEntity(text: "حِطَّةٍ", isCorrect: true),
  ];

  final List<ChooseCorrectEntity> group3 = [
    const ChooseCorrectEntity(text: "جَمَلٍ", isCorrect: false),
    const ChooseCorrectEntity(text: "بَقِّيْتْ", isCorrect: true),
    const ChooseCorrectEntity(text: "ظِلَّةً", isCorrect: true),
    const ChooseCorrectEntity(text: "رَحْمَةً", isCorrect: false),
    const ChooseCorrectEntity(text: "فَتَهَجَّدْ", isCorrect: true),
    const ChooseCorrectEntity(text: "أَشِدَّهُ", isCorrect: true),
  ];
  //اللام الشمسية
  final List<ChooseCorrectEntity> group4 = [
    const ChooseCorrectEntity(text: "اللفت", isCorrect: true),
    const ChooseCorrectEntity(text: "العرش", isCorrect: false),
    const ChooseCorrectEntity(text: "الرياضة", isCorrect: true),
    const ChooseCorrectEntity(text: "القراءة", isCorrect: false),
    const ChooseCorrectEntity(text: "الشراع", isCorrect: true),
    const ChooseCorrectEntity(text: "العصفور", isCorrect: false),
  ];

  final List<ChooseCorrectEntity> group5 = [
    const ChooseCorrectEntity(text: "الدهر", isCorrect: true),
    const ChooseCorrectEntity(text: "الستار", isCorrect: true),
    const ChooseCorrectEntity(text: "الهرم", isCorrect: false),
    const ChooseCorrectEntity(text: "الكرسي", isCorrect: false),
    const ChooseCorrectEntity(text: "الطوفان", isCorrect: true),
    const ChooseCorrectEntity(text: "المركز", isCorrect: false),
  ];

  // اللام القمرية
  final List<ChooseCorrectEntity> group6 = [
    const ChooseCorrectEntity(text: "الضر", isCorrect: false),
    const ChooseCorrectEntity(text: "الصوم", isCorrect: false),
    const ChooseCorrectEntity(text: "الكرم", isCorrect: true),
    const ChooseCorrectEntity(text: "الخشب", isCorrect: true),
    const ChooseCorrectEntity(text: "النزول", isCorrect: false),
    const ChooseCorrectEntity(text: "البعير", isCorrect: true),
  ];

  final List<ChooseCorrectEntity> group7 = [
    const ChooseCorrectEntity(text: "الظفر", isCorrect: false),
    const ChooseCorrectEntity(text: "اللئيم", isCorrect: false),
    const ChooseCorrectEntity(text: "الجزيل", isCorrect: true),
    const ChooseCorrectEntity(text: "الثوم", isCorrect: false),
    const ChooseCorrectEntity(text: "المشي", isCorrect: true),
    const ChooseCorrectEntity(text: "الحاج", isCorrect: true),
  ];

  return [
    ChooseCorrectGroupEntity(instruction: instructionShadda, words: group1),
    ChooseCorrectGroupEntity(instruction: instructionShadda, words: group2),
    ChooseCorrectGroupEntity(instruction: instructionShadda, words: group3),
    ChooseCorrectGroupEntity(instruction: instructionShamsiya, words: group4),
    ChooseCorrectGroupEntity(instruction: instructionShamsiya, words: group5),
    ChooseCorrectGroupEntity(instruction: instructionQamariya, words: group6),
    ChooseCorrectGroupEntity(instruction: instructionQamariya, words: group7),
  ];
}
