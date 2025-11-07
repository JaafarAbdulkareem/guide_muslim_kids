import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

void showErrorSnackbar(BuildContext context, String? message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message ?? S.of(context).alertTryAgain,
        style: AppTextStyle.fontBold20(
          context,
        ).copyWith(color: AppColor.secondaryText),
      ),
      backgroundColor: AppColor.error,

      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ),
  );
}
