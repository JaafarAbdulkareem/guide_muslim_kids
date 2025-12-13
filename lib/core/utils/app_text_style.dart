import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';

class AppTextStyle {
  static double _getResponsiveFontSize(BuildContext context, double baseSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    // Use 360 as the base design width (typical mobile width)
    // This calculates the percentage of the screen width the font should occupy
    double fontSize = screenWidth * (baseSize / 360);
    // Apply text scaling from accessibility settings
    return MediaQuery.of(context).textScaler.scale(fontSize);
  }

  //charDrop
  static TextStyle fontBold65(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 65);
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ) ??
        TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
  }

  //wordDrop
  static TextStyle fontthick48(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 48);
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          color: AppColor.lettersText1,
          letterSpacing: 2.0,
        ) ??
        TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          color: AppColor.lettersText1,
          letterSpacing: 2.0,
        );
  }

  //mutaharrik sakin
  static TextStyle fontSemiBold48(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 48);
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          letterSpacing: 2.0,
        ) ??
        TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          letterSpacing: 2.0,
        );
  }

  //letters game
  static TextStyle fontthick32(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 32);
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          letterSpacing: 2.0,
          color: AppColor.lettersText1,
        ) ??
        TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w900,
          letterSpacing: 2.0,
          color: AppColor.lettersText1,
        );
  }

  //chooseCorrectWords
  static TextStyle fontSemiBold32(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 32);
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: AppColor.lettersText1,
        ) ??
        TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: AppColor.lettersText1,
        );
  }

  //titleStage
  static TextStyle fontBold28(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 28);
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ) ??
        TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        );
  }

  /// TitleAthkar
  static TextStyle fontBold24(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 24);
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ) ??
        TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
  }

  /// ContentAthkar
  static TextStyle fontBold20(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 20);
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ) ??
        TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
  }

  /// ContentAthkar
  static TextStyle fontBold16(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 16);
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
        ) ??
        TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600);
  }

  //instracture, studentLevel
  static TextStyle fontSemiBold16(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 16);
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          color: AppColor.lettersBorder,
        ) ??
        TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          color: AppColor.lettersBorder,
        );
  }

  static TextStyle fontMedium11(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 11);
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: AppColor.secondaryText,
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
        ) ??
        TextStyle(
          color: AppColor.secondaryText,
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
        );
  }

  static TextStyle fontBold22(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 22);
    // Note: Blur radius is still hardcoded for now, could be made responsive if needed
    // But usually shadows don't need strict proportional scaling like text
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: AppColor.secondaryText,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          shadows: [
            const Shadow(
              blurRadius: 3,
              color: Colors.black54,
              offset: Offset(1, 1),
            ),
          ],
        ) ??
        TextStyle(
          color: AppColor.secondaryText,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          shadows: [
            const Shadow(
              blurRadius: 3,
              color: Colors.black54,
              offset: Offset(1, 1),
            ),
          ],
        );
  }

  static TextStyle fontBold18(BuildContext context) {
    double fontSize = _getResponsiveFontSize(context, 18);
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ) ??
        TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
  }
}
