import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/widget/body_about_us_view.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const BodyAboutUsView().safeArea();
  }
}
