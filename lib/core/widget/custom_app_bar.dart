import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImage.imagesPaper),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        title,
        style: AppTextStyle.fontBold24(
          context,
        ).copyWith(color: AppColor.secondaryText),
      ),
    );
  }
}
