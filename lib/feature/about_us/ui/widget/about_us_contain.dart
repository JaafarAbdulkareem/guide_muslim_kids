import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class AboutUsContain extends StatelessWidget {
  final String text;
  const AboutUsContain({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: AppTextStyle.fontBold16(context),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
