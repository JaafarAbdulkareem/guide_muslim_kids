import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameLevelCubit extends Cubit<int> {
  static late int firstSecondLength;
  static late int firstLength;
  FlutterTts flutterTts = FlutterTts();

  GameLevelCubit() : super(1) {
    _initializeTTS();
    _loadProgress();
  }
  
//   Future<void> _initializeTTS() async {
//   await flutterTts.setLanguage("ar");
//   await flutterTts.setPitch(1.0);
//   await flutterTts.setSpeechRate(0.5);

//   // 1. Get the list of all voices available on the device
//   List<dynamic> voices = await flutterTts.getVoices;

//   try {
//     // 2. Try to find a specific Arabic voice that is usually male
//     // On many devices, 'ar-sa-x-asf-local' or voices containing 'male' work.
//     var maleVoice = voices.firstWhere(
//       (voice) => 
//         voice["locale"].toString().contains("ar") && 
//         (voice["name"].toString().toLowerCase().contains("male") || 
//          voice["name"].toString().toLowerCase().contains("man")),
//       orElse: () => null
//     );

//     if (maleVoice != null) {
//       await flutterTts.setVoice({"name": maleVoice["name"], "locale": maleVoice["locale"]});
//     } else {
//       // 3. Fallback: If no "male" label is found, try lower pitch 
//       // to make the default voice sound deeper.
//       await flutterTts.setPitch(0.8); 
//     }
//   } catch (e) {
//     print("Error setting male voice: $e");
//   }
// }
Future<void> _initializeTTS() async {
  await flutterTts.setLanguage("ar");
  
  // 1. Get all voices
  List<dynamic> voices = await flutterTts.getVoices;
  
  // 2. Print them so you can see the names in your Debug Console
  for (var voice in voices) {
    if (voice["locale"].toString().contains("ar")) {
      print("Found Arabic Voice: ${voice["name"]} - ${voice["locale"]}");
    }
  }

  // 3. Target a known male voice pattern for Google TTS (Android)
  // Most Google 'ar-xa' voices with 'ard' or 'arc' are male.
  try {
    var maleVoice = voices.firstWhere(
      (voice) => 
        voice["locale"].toString().contains("ar") && 
        (voice["name"].toString().contains("ard") || 
         voice["name"].toString().contains("arc") || 
         voice["name"].toString().contains("male")),
      orElse: () => null
    );

    if (maleVoice != null) {
      await flutterTts.setVoice({"name": maleVoice["name"], "locale": maleVoice["locale"]});
      await flutterTts.setPitch(0.8); // Slightly lower pitch helps it sound more masculine
    } else {
      // If no specific male voice is found, force the pitch very low
      await flutterTts.setPitch(0.7); 
    }
  } catch (e) {
    print("Error: $e");
  }

  await flutterTts.setSpeechRate(0.5);
}
  // Future<void> _initializeTTS() async {
  //   await flutterTts.setLanguage("ar-SA"); // Set the language to Arabic
  //   await flutterTts.setPitch(1.0); // Set pitch
  //   await flutterTts.setSpeechRate(0.5); // Set speech rate
  // }

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
    await prefs.setInt('unlocked_question_id', 1);
  }

  // Method to speak the text using TTS
  Future<void> speakText(String text) async {
    await flutterTts.speak(text);
  }
}
