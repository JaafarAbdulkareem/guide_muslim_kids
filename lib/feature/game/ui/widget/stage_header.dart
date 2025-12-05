import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class StageHeader extends StatelessWidget {
  final String title;
  final int unlockedLevel;
  final Color colorBG;
  final int lengthData;
  final int previousLevelsLength;

  const StageHeader({
    super.key,
    required this.title,
    required this.unlockedLevel,
    required this.colorBG,
    required this.lengthData,
    required this.previousLevelsLength,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Calculate progress within this specific stage
    final int currentStageProgress = unlockedLevel - previousLevelsLength;

    // 2. Safer Star Logic (Using percentages handles small 'lengthData' better)
    // If lengthData is 0, avoid division by zero error by defaulting to 0 stars.
    int stars = 0;
    if (lengthData > 0) {
      double progressRatio = currentStageProgress / lengthData;
      if (progressRatio >= 0.33) stars = 1; // 33% done
      if (progressRatio >= 0.66) stars = 2; // 66% done
      if (progressRatio >= 1.0) stars = 3; // 100% done
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: colorBG,
        borderRadius: const BorderRadius.only(
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
                  color: (index < stars) ? AppColor.dragging : Colors.black26,
                ),
              );
            }),
          ),
          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.fontBold28(context),
            ),
          ),
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
