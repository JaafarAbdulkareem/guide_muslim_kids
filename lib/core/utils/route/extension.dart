import 'package:flutter/material.dart';

extension RouteX on String {
  Future pushReplacementNamed(context) =>
      Navigator.of(context).pushReplacementNamed(this);
  Future pushNamed(context) => Navigator.of(context).pushNamed(this);
}

extension NavigatorX on BuildContext {
  void pop() => Navigator.of(this).pop();
}
