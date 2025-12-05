import 'package:flutter/material.dart';

extension ScaffoldSafeAreaExtension on Widget {
  Scaffold safeArea({Color? backgroundColor}) => Scaffold(
    backgroundColor: backgroundColor,
    body: SafeArea(child: this),
  );
}
