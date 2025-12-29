import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

part 'text_to_speech_state.dart';

class TextToSpeechCubit extends Cubit<TextToSpeechState> {
  FlutterTts flutterTts = FlutterTts();
  TextToSpeechCubit() : super(TextToSpeechInitial()){
    _initializeTTS();
  }


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

  // Method to speak the text using TTS
  Future<void> speakText(String text) async {
    await flutterTts.speak(text);
  }

}
