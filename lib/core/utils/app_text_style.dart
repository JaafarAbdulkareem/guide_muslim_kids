import 'package:flutter/material.dart';

class AppTextStyle {
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
