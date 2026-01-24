import 'package:flutter/material.dart';

import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/game_level_runner.dart';

class ItemLevelStages extends StatelessWidget {
  const ItemLevelStages({
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
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          color: isLocked ? Colors.grey.shade400 : colorBGItem,
          shape: BoxShape.circle,
          boxShadow: [
            if (!isLocked)
              BoxShadow(
                color: colorShadowItem,
                offset: Offset(0, MediaQuery.of(context).size.height * 0.008),
                blurRadius: 0,
              ),
            if (isLocked)
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, MediaQuery.of(context).size.height * 0.006),
              ),
          ],
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Center(
          child: isLocked
              ? Icon(AppIcon.lock,
                  color: Colors.white54,
                  size: MediaQuery.of(context).size.width * 0.1)
              : Text(
                  "${level.levelNumber}",
                  style: AppTextStyle.fontSemiBold48(
                    context,
                  ).copyWith(color: AppColor.secondaryText),
                ),
        ),
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
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
        margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02),
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
