import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/route/route_name.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      // case RouteName.splash:
      // return MaterialPageRoute(builder: (_) => const SplashView());
      default:
        return MaterialPageRoute(builder: (_) => const Center());
    }
  }
}
