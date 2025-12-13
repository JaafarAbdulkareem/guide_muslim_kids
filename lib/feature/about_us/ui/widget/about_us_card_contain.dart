import 'package:flutter/material.dart';

import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/widget/about_us_contain.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/widget/about_us_point_text.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/widget/about_us_title.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class AboutUsCardContain extends StatelessWidget {
  const AboutUsCardContain({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColor.cardColor.withValues(alpha: 0.83),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutUsTitle(text: s.aboutEducationLevelsTitle),
          AboutUsContain(text: s.aboutEducationLevelsDescription),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          AboutUsPointText(text: s.aboutEducationLevel1),
          AboutUsPointText(text: s.aboutEducationLevel2),
          AboutUsPointText(text: s.aboutEducationLevel3),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          AboutUsTitle(text: s.aboutGoalsTitle),
          AboutUsPointText(text: s.aboutGoalsPoint1),
          AboutUsPointText(text: s.aboutGoalsPoint2),
          AboutUsPointText(text: s.aboutGoalsPoint3),
          AboutUsPointText(text: s.aboutGoalsPoint4),
          AboutUsPointText(text: s.aboutGoalsPoint5),
          AboutUsPointText(text: s.aboutGoalsPoint6),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          AboutUsTitle(text: s.aboutVisionTitle),
          AboutUsContain(text: s.aboutVisionText),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),

          AboutUsTitle(text: s.aboutMessageTitle),
          AboutUsContain(text: s.aboutMessage),
        ],
      ),
    );
  }
}
