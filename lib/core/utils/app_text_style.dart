import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';

class AppTextStyle {
  static TextStyle fontthick32(BuildContext context) {
    //letters game
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          letterSpacing: 2.0,
          color: AppColor.lettersText,
        ) ??
        const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          letterSpacing: 2.0,
          color: AppColor.lettersText,
        );
  }

//chooseCorrectWords
  static TextStyle fontSemiBold32(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColor.lettersText,
        ) ??
        TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColor.lettersText,
        );
  }

  /// TitleAthkar
  static TextStyle fontBold24(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ) ??
        const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  }

  /// ContentAthkar
  static TextStyle fontBold20(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ) ??
        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  }
}
