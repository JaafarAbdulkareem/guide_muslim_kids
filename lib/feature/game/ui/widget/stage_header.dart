import 'package:flutter/material.dart';

import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

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
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
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
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.01,
                ),
                child: Icon(
                  Icons.star,
                  size: index == 1
                      ? MediaQuery.of(context).size.width * 0.12
                      : MediaQuery.of(context).size.width * 0.1,
                  color: (index < stars) ? AppColor.dragging : Colors.black26,
                ),
              );
            }),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle.fontBold28(context),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.007),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
              vertical: MediaQuery.of(context).size.height * 0.007,
            ),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "${S.of(context).studentStage} $unlockedLevel",
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
