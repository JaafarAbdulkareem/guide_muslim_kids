import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/about_us_view.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_view.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      // case RouteName.splash:
      // return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RouteName.aboutUs:
        return MaterialPageRoute(builder: (_) => const AboutUsView());
      default:
        return MaterialPageRoute(builder: (_) => const Center());
    }
  }
}
