import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';

List<QuestionTwoButtonEntity> getDataSecondTwoOption(BuildContext context) {
  final random = Random();

  List<QuestionTwoButtonEntity> data = [
    // جالس (جـُ - جـ)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "أختر الحركة المناسبة قبل حرف المد",
        letters: "جالس",
        optionA: isAcorrect ? "جـُ" : "جـَ",
        optionB: isAcorrect ? "جـَ" : "جـُ",
        correctOption: "جـَ",
      );
    }(),

    // ثيابهم (ــيــَ - ــيــ)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "أختر الحركة المناسبة قبل حرف المد",
        letters: "ثيابهم",
        optionA: isAcorrect ? "ــيــَ" : "ــيــِ",
        optionB: isAcorrect ? "ــيــِ" : "ــيــَ",
        correctOption: "ــيــَ",
      );
    }(),

    // يوح (يـُ ، يـَ)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "أختر الحركة المناسبة قبل حرف المد",
        letters: "يوح",
        optionA: isAcorrect ? "يـُ" : "يـَ",
        optionB: isAcorrect ? "يـَ" : "يـُ",
        correctOption: "يـُ",
      );
    }(),

    // يسخرون (ـرُ , ـرْ)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "أختر الحركة المناسبة قبل حرف المد",
        letters: "يسخرون",
        optionA: isAcorrect ? "ـرُ" : "ـرْ",
        optionB: isAcorrect ? "ـرْ" : "ـرُ",
        correctOption: "ـرُ",
      );
    }(),

    // يسيغه (ـسَـ , ـسِـ)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "أختر الحركة المناسبة قبل حرف المد",
        letters: "يسيغه",
        optionA: isAcorrect ? "ـسَـ" : "ـسِـ",
        optionB: isAcorrect ? "ـسِـ" : "ـسَـ",
        correctOption: "ـسِـ",
      );
    }(),

    // يفتدي (ـدَ , ـدِ)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "أختر الحركة المناسبة قبل حرف المد",
        letters: "يفتدي",
        optionA: isAcorrect ? "ـدَ" : "ـدِ",
        optionB: isAcorrect ? "ـدِ" : "ـدَ",
        correctOption: "ـدِ",
      );
    }(),
  ];

  return data;
}
