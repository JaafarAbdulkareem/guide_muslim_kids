import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_entity.dart';

part 'choose_correct_state.dart';

class ChooseCorrectCubit extends Cubit<ChooseCorrectState> {
  // Constructor now requires the initial list of words
  ChooseCorrectCubit(List<ChooseCorrectEntity> initialWords)
    : super(GameInitial(initialWords));

  void selectWord(int index) {
    // Get current list from state
    List<ChooseCorrectEntity> currentList = [];
    if (state is GameInitial) currentList = (state as GameInitial).words;
    if (state is AnswerCorrect) currentList = (state as AnswerCorrect).words;
    if (state is AnswerWrong) currentList = (state as AnswerWrong).words;
    if (state is GameFinished) currentList = (state as GameFinished).words;

    if (currentList.isEmpty) return;

    final selectedWord = currentList[index];

    // If already found, do nothing
    if (selectedWord.isFound) return;

    if (selectedWord.isCorrect) {
      // 1. Mark as found
      final updatedList = List<ChooseCorrectEntity>.from(currentList);
      updatedList[index] = selectedWord.copyWith(isFound: true);

      // 2. Check if all correct words are found
      final remainingCorrect = updatedList
          .where((w) => w.isCorrect && !w.isFound)
          .toList();

      if (remainingCorrect.isEmpty) {
        emit(GameFinished(updatedList));
      } else {
        emit(AnswerCorrect(updatedList));
      }
    } else {
      // Wrong choice - Do not change list, just emit wrong state to trigger SnackBar
      emit(AnswerWrong(currentList));
    }
  }
}
