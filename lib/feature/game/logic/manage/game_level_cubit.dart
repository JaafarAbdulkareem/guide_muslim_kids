import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameLevelCubit extends Cubit<int> {
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

  bool isLevelUnlocked(int levelId) {
    return levelId <= state;
  }
}
