import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';

part 'question_two_button_state.dart';

class QuestionTwoButtonCubit extends Cubit<QuestionTwoButtonState> {
  QuestionTwoButtonCubit() : super(QuizInitial());

  void checkAnswer(String selectedAnswer, QuestionTwoButtonEntity question) {
    if (question.isCorrect(selectedAnswer)) {
      emit(QuizCorrect("أحسنت! إجابة صحيحة")); // "Well done! Correct answer"
    } else {
      emit(QuizWrong("حاول مرة أخرى")); // "Try again"
    }
  }

  void reset() {
    emit(QuizInitial());
  }
}
