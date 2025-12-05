part of 'choose_correct_cubit.dart';

abstract class ChooseCorrectState {}

class GameInitial extends ChooseCorrectState {
  final List<ChooseCorrectEntity> words;
  GameInitial(this.words);
}

// State to trigger "Correct" feedback (SnackBar)
class AnswerCorrect extends ChooseCorrectState {
  final List<ChooseCorrectEntity> words;
  AnswerCorrect(this.words);
}

// State to trigger "Wrong" feedback (SnackBar)
class AnswerWrong extends ChooseCorrectState {
  final List<ChooseCorrectEntity> words;
  AnswerWrong(this.words);
}

// State to trigger "Dialog" (Game Finished)
class GameFinished extends ChooseCorrectState {
  final List<ChooseCorrectEntity> words;
  GameFinished(this.words);
}
