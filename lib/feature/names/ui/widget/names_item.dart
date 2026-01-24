import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/extension.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/names/logic/entities/names_entity.dart';

class NamesItem extends StatelessWidget {
  const NamesItem({super.key, required this.data});

  final NamesEntity data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        RouteName.namesDetails.pushAnimatedNamed(context, arguments: data);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.borderNames),
          borderRadius: BorderRadius.circular(12), // optional: rounded corners
        ),
        child: Stack(
          children: [
            Image.asset(
              AppImage.imagesGrideBackgroundNames,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Center(
                child: FittedBox(
                  child: Text(
                    data.title,
                    textAlign: TextAlign.center,
                    style: AppTextStyle.fontBold20(
                      context,
                    ).copyWith(color: AppColor.namesText),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
