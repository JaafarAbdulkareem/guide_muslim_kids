import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/game_level_runner.dart';

class ItemGameLevel extends StatelessWidget {
  const ItemGameLevel({
    super.key,
    required this.level,
    required this.isLocked,
    required this.isLeft,
    required this.colorBGItem,
    required this.colorShadowItem,
    required this.colorLetter,
  });
  final GameLevelEntity level;
  final bool isLocked;
  final bool isLeft;
  final Color colorBGItem;
  final Color colorShadowItem;
  final Color colorLetter;
  @override
  Widget build(BuildContext context) {
    var children = <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: isLocked ? Colors.grey.shade400 : colorBGItem,
          shape: BoxShape.circle,
          boxShadow: [
            if (!isLocked)
              BoxShadow(
                color: colorShadowItem,
                offset: const Offset(0, 6),
                blurRadius: 0,
              ),
            if (isLocked)
              const BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
          ],
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Center(
          child: isLocked
              ? const Icon(Icons.lock, color: Colors.white54, size: 40)
              : Text(
                  "${level.levelNumber}",
                  style: AppTextStyle.fontSemiBold48(
                    context,
                  ).copyWith(color: Colors.white),
                ),
        ),
      ),
      const SizedBox(width: 20),
      if (!isLocked)
        Expanded(
          child: Text(
            level.title,
            textAlign: isLeft ? TextAlign.start : TextAlign.end,
            style: AppTextStyle.fontBold24(
              context,
            ).copyWith(color: colorLetter),
          ),
        ),
    ];

    if (!isLeft) {
      children = children.reversed.toList();
    }

    return GestureDetector(
      onTap: isLocked
          ? null
          : () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GameLevelRunner(level: level),
                ),
              );
            },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: isLeft
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: children,
        ),
      ),
    );
  }
}
