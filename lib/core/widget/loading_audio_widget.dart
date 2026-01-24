import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class LoadingAudioWidget extends StatelessWidget {
  final String? title;

  const LoadingAudioWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? S.of(context).loadingAudio,
      style: AppTextStyle.fontBold20(
        context,
      ).copyWith(color: AppColor.secondaryText),
    );
  }
}
