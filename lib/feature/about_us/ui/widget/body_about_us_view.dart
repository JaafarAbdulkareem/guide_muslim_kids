import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/widget/about_us_card_contain.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class BodyAboutUsView extends StatelessWidget {
  const BodyAboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.imagesPaper),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    AppImage.imagesEducationLogo,
                    height: 120,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  s.aboutCenterName,
                  //second text
                  style: AppTextStyle.fontBold24(
                    context,
                  ).copyWith(color: AppColor.cardColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                //second text
                Text(
                  s.aboutCenterAddress,
                  style: AppTextStyle.fontBold20(
                    context,
                  ).copyWith(color: AppColor.cardColor),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                const AboutUsCardContain(),
                const SizedBox(height: 40),
                Image.asset(AppImage.imagesEducationLogo, height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
