import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/fast/data/fast.dart';
import 'package:guide_muslim_kids/core/widget/athkar_list.dart';

class BodyFastView extends StatelessWidget {
  const BodyFastView({super.key});

  @override
  Widget build(BuildContext context) {
    return AthkarList(data: getDataFast(context));
  }
}
