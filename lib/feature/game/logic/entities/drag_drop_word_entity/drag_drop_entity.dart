import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/letter_item_entity.dart';

enum ZonesType { sakin, madd, shaddah, shamsiya }

class DragDropEntity {
  final ZonesType zoneType;
  final String word;
  final List<LetterItemEntity> letters;

  const DragDropEntity({
    required this.zoneType,
    required this.word,
    required this.letters,
  });
}
