import 'package:flutter/material.dart';

extension ScaffoldSafeAreaExtension on Widget {
  Scaffold safeArea() => Scaffold(body: SafeArea(child: this));
}
