import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_entity.dart';

class ChooseCorrectGroupEntity {
  final String instruction;
  final List<ChooseCorrectEntity> words;

  const ChooseCorrectGroupEntity({
    required this.instruction,
    required this.words,
  });
}
