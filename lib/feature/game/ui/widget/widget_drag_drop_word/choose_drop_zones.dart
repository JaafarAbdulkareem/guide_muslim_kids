import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/level_first/ui/widget/first_level_drop_zones.dart';
import 'package:guide_muslim_kids/feature/level_second/ui/widget/second_level_drop_zones.dart';
import 'package:guide_muslim_kids/feature/level_third/ui/widget/third_level_1_drop_zones.dart';
import 'package:guide_muslim_kids/feature/level_third/ui/widget/third_level_2_drop_zones.dart';

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
        return FirstLevelDropZones();
      case ZonesType.madd:
        return SecondLevelDropZones();
      case ZonesType.shaddah:
        return ThirdLevel1DropZones();
      case ZonesType.shamsiya:
        return ThirdLevel2DropZones();
    }
  }
}
