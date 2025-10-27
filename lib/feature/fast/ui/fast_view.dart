import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/fast/ui/widget/body_fast_view.dart';

class FastView extends StatelessWidget {
  const FastView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyFastView().safeArea();
  }
}
