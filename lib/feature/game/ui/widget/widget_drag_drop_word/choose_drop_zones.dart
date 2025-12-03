import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';

class ChooseDropZones extends StatelessWidget {
  const ChooseDropZones({super.key, required this.zoneType});
  final ZonesType zoneType;
  @override
  Widget build(BuildContext context) {
    return _zoneDragDrop();
  }

  Widget _zoneDragDrop() {
    switch (zoneType) {
      case ZonesType.sakin:
        return Center(child: Text("TEst sakin")); //FirstLevelDropZones();
      case ZonesType.madd:
        return Center(child: Text("TEst madd")); //SecondLevelDropZones();
      case ZonesType.shaddah:
        return Center(child: Text("TEst shaddah")); //ThirdLevel1DropZones();
      case ZonesType.shamsiya:
        return Center(child: Text("TEst shamsiya")); //ThirdLevel2DropZones();
    }
  }
}
