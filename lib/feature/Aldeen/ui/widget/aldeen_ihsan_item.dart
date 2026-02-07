import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';

class AldeenIhsanItem extends StatelessWidget {
  const AldeenIhsanItem({super.key, required this.data});
  final AldeenEntity data;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.imagesPaper),
            fit: BoxFit.fill,
          ),
        ),
        child: Text(
          data.title,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.fontBold24(context).copyWith(
            shadows: const [
              Shadow(
                blurRadius: 3,
                color: AppColor.shadowText,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
