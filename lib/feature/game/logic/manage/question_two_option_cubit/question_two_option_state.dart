part of 'question_two_option_cubit.dart';
abstract class QuestionTwoOptionState {}

class QuizInitial extends QuestionTwoOptionState {}

class QuizCorrect extends QuestionTwoOptionState {
  final String message;
  QuizCorrect(this.message);
}

class QuizWrong extends QuestionTwoOptionState {
  final String message;
  QuizWrong(this.message);
}
