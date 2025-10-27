import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/prayer/data/prayer.dart';
import 'package:guide_muslim_kids/core/widget/athkar_list.dart';

class BodyPrayerView extends StatelessWidget {
  const BodyPrayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return AthkarList(data: getDataPrayer(context));
  }
}
