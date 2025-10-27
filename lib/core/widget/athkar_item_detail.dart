import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/size_extension.dart';
import 'package:guide_muslim_kids/core/widget/audio_button.dart';

class AthkarItemDetail extends StatelessWidget {
  const AthkarItemDetail({super.key, required this.data});
  final AthkarEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            SizedBox(
              height: context.height * 0.89,
              child: Image.asset(
                data.imageCharacter,
                fit: BoxFit.fill,
                width: context.width,
                height: context.height,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: context.width,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColor.athkarContainTap,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "{ ${data.title} }",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.fontBold24(context),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      data.content,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.fontBold20(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(data.imageBackground),
                fit: BoxFit.fill,
              ),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AudioButton(icon: AppIcon.pause, onPressed: () {}),
                AudioButton(icon: AppIcon.play, onPressed: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
