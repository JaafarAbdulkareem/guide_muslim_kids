import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/daily/ui/widget/body_daily_view.dart';

class DailyView extends StatelessWidget {
  const DailyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyDailyView().safeArea();
  }
}
