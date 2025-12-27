class QuestionTwoButtonEntity {
  final String instruction; // e.g., "صل بين الحروف"
  final String letters; // e.g., "غ س ل"
  final String optionA; // e.g., "غسل"
  final String optionB; // e.g., "غس ل"
  final String correctOption; // The actual correct string
  final String textToSpeech ;

  const QuestionTwoButtonEntity({
    required this.instruction,
    required this.letters,
    required this.optionA,
    required this.optionB,
    required this.correctOption,
    required this.textToSpeech,
  });

  bool isCorrect(String selected) => selected == correctOption;
}
