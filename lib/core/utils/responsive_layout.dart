import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/constant_scale.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < ConstantScale.tabletPoint) {
          return mobileBody;
        } else {
          return tabletBody;
        }
      },
    );
  }
}
