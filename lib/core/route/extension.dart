import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/animated_route.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

extension RouteX on String {
  Future pushNamed(BuildContext context, {Object? arguments}) =>
      Navigator.of(context).pushNamed(this, arguments: arguments);

  Future pushReplacementNamed(BuildContext context, {Object? arguments}) =>
      Navigator.of(context).pushReplacementNamed(this, arguments: arguments);

  /// 🔹 Animated push using route name
  Future pushAnimatedNamed(
    BuildContext context, {
    Object? arguments,
    RouteType type = RouteType.slide,
  }) {
    final route = _buildAnimatedRoute(
      context,
      routeName: this,
      arguments: arguments,
      type: type,
      replace: false,
    );
    return Navigator.of(context).push(route);
  }

  /// 🔹 Animated pushReplacement using route name
  Future pushReplacementAnimatedNamed(
    BuildContext context, {
    Object? arguments,
    RouteType type = RouteType.slide,
  }) {
    final route = _buildAnimatedRoute(
      context,
      routeName: this,
      arguments: arguments,
      type: type,
      replace: true,
    );
    return Navigator.of(context).pushReplacement(route);
  }

  /// Internal helper to get the correct page from your route table
  Route _buildAnimatedRoute(
    BuildContext context, {
    required String routeName,
    Object? arguments,
    required RouteType type,
    required bool replace,
  }) {
    final settings = RouteSettings(name: routeName, arguments: arguments);

    // Ask MaterialApp's onGenerateRoute to provide the correct Widget
    final routeBuilder =
        Navigator.of(context).widget.onGenerateRoute ?? _defaultRouteBuilder;

    final pageRoute = routeBuilder(settings);
    if (pageRoute == null) throw Exception('Route not found: $routeName');

    final page = (pageRoute as MaterialPageRoute).builder(context);

    return switch (type) {
      RouteType.fade => AnimatedRoute.fade(page, settings: settings),
      RouteType.slide => AnimatedRoute.slideFromRight(page, settings: settings),
    };
  }

  static Route<dynamic> _defaultRouteBuilder(RouteSettings settings) {
    log('No onGenerateRoute provided. Animated named routes require it.');
    throw Exception(S.current.alertTryAgain);
  }
}

enum RouteType { fade, slide }

extension NavigatorX on BuildContext {
  void pop([Object? result]) => Navigator.of(this).pop(result);
}
