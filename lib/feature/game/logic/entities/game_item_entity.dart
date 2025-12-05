enum GameType { twoButtons, sorting, chooseCorrect }

class GameItemEntity {
  final GameType type;
  final dynamic data;

  GameItemEntity({required this.type, required this.data});
}
