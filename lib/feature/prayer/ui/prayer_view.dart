import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/prayer/ui/widget/body_prayer_view.dart';

class PrayerView extends StatelessWidget {
  const PrayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyPrayerView().safeArea();
  }
}
