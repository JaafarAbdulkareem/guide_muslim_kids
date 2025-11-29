import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/enum_letter_type.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/logic/entities/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/drap_drop_word/logic/entities/letter_item_entity.dart';

part 'drap_drop_word_state.dart';

class DrapDropWordCubit extends Cubit<DrapDropWordState> {
  final DragDropEntity levelData;

  // Public list to access from UI directly.
  // Last item in this list is the "Top" card in the UI Stack.
  List<LetterItemEntity> remainingLetters = [];

  DrapDropWordCubit({required this.levelData}) : super(GamePlaying()) {
    _initGame();
  }

  void _initGame() {
    // We reverse the list for the UI Stack so the first logical letter
    // is visually on top (last element of the list in a Stack is top-most).
    remainingLetters = List.from(levelData.letters.reversed);
    emit(GamePlaying());
  }

  // --- SEPARATE CHECK ANSWER FUNCTION ---
  // This function does not rely on the current state class to function.
  void checkAnswer(LetterItemEntity letter, LetterType targetType) {
    // 1. Check if the dragged letter's type matches the target box type
    if (letter.type == targetType) {
      _handleCorrectDrop();
    } else {
      // Logic for wrong answer (optional - currently does nothing)
    }
  }

  // Internal helper to update list and emit state
  void _handleCorrectDrop() {
    // Remove the card from the list
    if (remainingLetters.isNotEmpty) {
      remainingLetters.removeLast();
    }

    // Check if Game is Finished
    if (remainingLetters.isEmpty) {
      emit(GameCompleted());
    } else {
      // Re-emit Playing state to force UI rebuild with fewer cards
      emit(GamePlaying());
    }
  }
}
