import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';
import 'dart:math';

List<QuestionTwoButtonEntity> getDataThirdTwoOption(BuildContext context) {
  final random = Random();

  List<QuestionTwoButtonEntity> data = [
    // يتشهد
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "اختار الاجابة الصحيحة",
        letters: "يَتَشَهَّدَ",
        optionA: isAcorrect ? "ـهـْهـَـ" : "ـهـَهـْـ",
        optionB: isAcorrect ? "ـهـَهـْـ" : "ـهـْهـَـ",
        correctOption: "ـهـْهـَـ",
      );
    }(),

    // يوفق
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "اختار الاجابة الصحيحة",
        letters: "يُوَفِّقُ",
        optionA: isAcorrect ? "ـفْفِـ" : "ـفِفْـ",
        optionB: isAcorrect ? "ـفِفْـ" : "ـفْفِـ",
        correctOption: "ـفْفِـ",
      );
    }(),

    // تعجل
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "اختار الاجابة الصحيحة",
        letters: "تَعَجَّلَ",
        optionA: isAcorrect ? "ـجْجَـ" : "ـجَجْـ",
        optionB: isAcorrect ? "ـجَجْـ" : "ـجْجَـ",
        correctOption: "ـجْجَـ",
      );
    }(),

    // تنشق
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "اختار الاجابة الصحيحة",
        letters: "تَنْشَقُّ",
        optionA: isAcorrect ? "ـقْقُـ" : "ـقْقِـ",
        optionB: isAcorrect ? "ـقْقِـ" : "ـقْقُـ",
        correctOption: "ـقْقُـ",
      );
    }(),

    // تأخر
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "اختار الاجابة الصحيحة",
        letters: "تَأَخَّرَ",
        optionA: isAcorrect ? "ـخْخَـ" : "ـخْخُـ",
        optionB: isAcorrect ? "ـخْخُـ" : "ـخْخَـ",
        correctOption: "ـخْخَـ",
      );
    }(),

    // جيدة
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "اختار الاجابة الصحيحة",
        letters: "جَيِّدَة",
        optionA: isAcorrect ? "ـيْيِـ" : "ـيْيَـ",
        optionB: isAcorrect ? "ـيْيَـ" : "ـيْيِـ",
        correctOption: "ـيْيِـ",
      );
    }(),
  ];

  return data;
}
