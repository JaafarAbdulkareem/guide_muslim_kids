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
    return Center(
      child: AspectRatio(
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                data.title,
                textAlign: TextAlign.center,
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
              const SizedBox(height: 8),
              Flexible(
                child: Text(
                  data.content ?? "",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.fontBold20(context).copyWith(
                    fontWeight: FontWeight.w400,
                    shadows: const [
                      Shadow(
                        blurRadius: 2,
                        color: AppColor.shadowText,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
