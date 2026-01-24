import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/widget/body_aldeen_view.dart';

class AldeenView extends StatelessWidget {
  const AldeenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyAldeenView().safeArea();
  }
}
