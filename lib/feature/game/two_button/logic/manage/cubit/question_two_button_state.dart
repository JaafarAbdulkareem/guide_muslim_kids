part of 'question_two_button_cubit.dart';
abstract class QuestionTwoButtonState {}

class QuizInitial extends QuestionTwoButtonState {}

class QuizCorrect extends QuestionTwoButtonState {
  final String message;
  QuizCorrect(this.message);
}

class QuizWrong extends QuestionTwoButtonState {
  final String message;
  QuizWrong(this.message);
}
