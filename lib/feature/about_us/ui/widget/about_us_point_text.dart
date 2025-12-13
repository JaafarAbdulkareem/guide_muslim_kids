import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class AboutUsPointText extends StatelessWidget {
  final String text;
  const AboutUsPointText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "• ",
            style: AppTextStyle.fontBold16(
              context,
            ).copyWith(fontSize: 18.sp, color: AppColor.titleAboutUs),
          ),
          Expanded(
            child: Text(
              text,
              style: AppTextStyle.fontBold16(context),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
