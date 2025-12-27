import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_option_entity.dart';

part 'question_two_option_state.dart';

class QuestionTwoOptionCubit extends Cubit<QuestionTwoOptionState> {
  QuestionTwoOptionCubit() : super(QuizInitial());

  void checkAnswer(String selectedAnswer, QuestionTwoOptionEntity question) {
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
