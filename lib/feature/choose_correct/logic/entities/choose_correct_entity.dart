class ChooseCorrectEntity {
  final String text;
  final bool isCorrect;
  final bool isFound;

  const ChooseCorrectEntity({
    required this.text,
    required this.isCorrect,
    this.isFound = false,
  });

  // Helper to copy object with changes
  ChooseCorrectEntity copyWith({bool? isFound}) {
    return ChooseCorrectEntity(
      text: text,
      isCorrect: isCorrect,
      isFound: isFound ?? this.isFound,
    );
  }
}
