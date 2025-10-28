import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/names/ui/widget/body_names_view.dart';

class NamesView extends StatelessWidget {
  const NamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BodyNamesView().safeArea();
  }
}
