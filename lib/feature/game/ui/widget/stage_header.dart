import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/game/data/data_game_first_level.dart';

class StageHeader extends StatelessWidget {
  final String title;
  final int unlockedLevel;

  const StageHeader({
    super.key,
    required this.title,
    required this.unlockedLevel,
  });

  @override
  Widget build(BuildContext context) {
    int stars = 0;
    final int displayStar = (getDataFirstLevel(context).length / 3)
        .toInt(); //ConstantScale.divideData;
    if (unlockedLevel > displayStar - 1) stars = 1;
    if (unlockedLevel > displayStar * 2) stars = 2;
    if (unlockedLevel > displayStar * 3) stars = 3;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(
        color: AppColor.lettersText,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Icon(
                  Icons.star,
                  size: index == 1 ? 50 : 40,
                  color: index < stars ? AppColor.dragging : Colors.black26,
                ),
              );
            }),
          ),
          const SizedBox(height: 15),
          Text(title, style: AppTextStyle.fontBold28(context)),
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "مستوى الطالب: $unlockedLevel", //S.of(context).studentLevel
              style: AppTextStyle.fontSemiBold16(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
