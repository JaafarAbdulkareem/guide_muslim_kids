import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';

class AppTextStyle {
  //charDrop
  static TextStyle fontBold65(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: 65,
          fontWeight: FontWeight.bold,
        ) ??
        TextStyle(fontSize: 65, fontWeight: FontWeight.bold);
  }

  //wordDrop
  static TextStyle fontthick48(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: 48,
          fontWeight: FontWeight.w900,
          color: AppColor.lettersText,
          letterSpacing: 2.0,
        ) ??
        const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w900,
          color: AppColor.lettersText,
          letterSpacing: 2.0,
        );
  }

  //mutaharrik sakin
  static TextStyle fontSemiBold48(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          letterSpacing: 2.0,
        ) ??
        const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          letterSpacing: 2.0,
        );
  }

  //letters game
  static TextStyle fontthick32(BuildContext context) {
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
        const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          color: AppColor.lettersText,
        );
  }

  //titleStage
  static TextStyle fontBold28(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ) ??
        const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
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

  /// ContentAthkar
  static TextStyle fontBold16(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ) ??
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
  }

  //instracture, studentLevel
  static TextStyle fontSemiBold16(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColor.lettersBorder,
        ) ??
        const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColor.lettersBorder,
        );
  }
}
