import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';
import 'dart:math';

List<QuestionTwoButtonEntity> getDataFirstTwoOption(BuildContext context) {
  final random = Random();
//final String instruction = S.of(context).instructionTWoOption;
  List<QuestionTwoButtonEntity> data = [
    // Question 1 (updated letters: ح - ف - ر)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "صل بين الحروف",
        letters: "ح - ف - ر",
        optionA: isAcorrect ? "حفر" : "ح فر",
        optionB: isAcorrect ? "ح فر" : "حفر",
        correctOption: "حفر",
        textToSpeech: "حَفَرَ",
      );
    }(),

    // Question 2 (letters: ب - ذ - ر)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "صل بين الحروف",
        letters: "ب - ذ - ر",
        optionA: isAcorrect ? "بذر" : "ب ذ ر",
        optionB: isAcorrect ? "ب ذ ر" : "بذر",
        correctOption: "بذر",
        textToSpeech: "بَذَرَ",
      );
    }(),

    // Question 3 (letters: ذ - ك - ر)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "صل بين الحروف",
        letters: "ذ - ك - ر",
        optionA: isAcorrect ? "ذكر" : "ذ ك ر",
        optionB: isAcorrect ? "ذ ك ر" : "ذكر",
        correctOption: "ذكر",
        textToSpeech: "ذَكَرَ",
      );
    }(),

    // Question 4 (letters: ل - ب - ن - ك)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "صل بين الحروف",
        letters: "ل - ب - ن - ك",
        optionA: isAcorrect ? "لبنك" : "لب نك",
        optionB: isAcorrect ? "لب نك" : "لبنك",
        correctOption: "لبنك",
        textToSpeech: "لَبَنُكَ",
      );
    }(),

    // Question 5 (letters: ح - م - ل - ك)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "صل بين الحروف",
        letters: "ح - م - ل - ك",
        optionA: isAcorrect ? "حملك" : "حم ل ك",
        optionB: isAcorrect ? "حم ل ك" : "حملك",
        correctOption: "حملك",
        textToSpeech: "حَمْلُكَ",
      );
    }(),

    // Question 6 (letters: و - ط - ن - ك)
    () {
      bool isAcorrect = random.nextBool();
      return QuestionTwoButtonEntity(
        instruction: "صل بين الحروف",
        letters: "و - ط - ن - ك",
        optionA: isAcorrect ? "وطنك" : "و طن ك",
        optionB: isAcorrect ? "و طن ك" : "وطنك",
        correctOption: "وطنك",
        textToSpeech: "وَطَنُكَ",
      );
    }(),
  ];

  return data;

//   حَفَرَ
// بَذَرَ
// ذِكْرٌ
// لَبَنُكَ
// حَمْلُكَ
// وَطَنُكَ

}
