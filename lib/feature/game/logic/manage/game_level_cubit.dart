import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameLevelCubit extends Cubit<int> {
  static late int firstSecondLength;
  static late int firstLength;

  GameLevelCubit() : super(1) {
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final savedLevel =
        prefs.getInt('unlocked_level') ?? 1; //constantKey + helper function

    emit(savedLevel);
  }

  Future<void> unlockNextLevel() async {
    final newLevel = state + 1;
    emit(newLevel);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('unlocked_level', newLevel);
  }

  Future<void> completeLevel(int levelId) async {
    if (levelId == state) {
      await unlockNextLevel();
    }
  }

  bool isLevelUnlocked(int levelId) {
    return levelId <= state;
  }

  // Debug helper
  Future<void> resetProgress() async {
    emit(1);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('unlocked_question_id', 15);
  }
}
