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
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AboutUsTitle(text: s.aboutEducationLevelsTitle),
          AboutUsContain(text: s.aboutEducationLevelsDescription),
          const SizedBox(height: 8),
          AboutUsPointText(text: s.aboutEducationLevel1),
          AboutUsPointText(text: s.aboutEducationLevel2),
          AboutUsPointText(text: s.aboutEducationLevel3),
          const SizedBox(height: 20),

          AboutUsTitle(text: s.aboutGoalsTitle),
          AboutUsPointText(text: s.aboutGoalsPoint1),
          AboutUsPointText(text: s.aboutGoalsPoint2),
          AboutUsPointText(text: s.aboutGoalsPoint3),
          AboutUsPointText(text: s.aboutGoalsPoint4),
          AboutUsPointText(text: s.aboutGoalsPoint5),
          AboutUsPointText(text: s.aboutGoalsPoint6),
          const SizedBox(height: 20),

          AboutUsTitle(text: s.aboutVisionTitle),
          AboutUsContain(text: s.aboutVisionText),
          const SizedBox(height: 20),

          AboutUsTitle(text: s.aboutMessageTitle),
          AboutUsContain(text: s.aboutMessage),
        ],
      ),
    );
  }
}
