import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class AboutUsTitle extends StatelessWidget {
  final String text;
  const AboutUsTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        "$text: ",
        style: AppTextStyle.fontBold20(
          context,
        ).copyWith(color: AppColor.titleAboutUs),
      ),
    );
  }
}
