import 'package:flutter/material.dart';

extension RouteX on String {
  Future pushNamed(BuildContext context, {Object? arguments}) =>
      Navigator.of(context).pushNamed(this, arguments: arguments);

  Future pushReplacementNamed(BuildContext context, {Object? arguments}) =>
      Navigator.of(context).pushReplacementNamed(this, arguments: arguments);
}

extension NavigatorX on BuildContext {
  void pop([Object? result]) => Navigator.of(this).pop(result);
}
