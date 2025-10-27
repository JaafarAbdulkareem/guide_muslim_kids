import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/widget/athkar_detail_view.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_view.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      // case RouteName.splash:
      // return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RouteName.dailyDetails:
        final args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) =>
              AthkarDetailView(data: args is AthkarEntity ? args : null),
        );
      
      default:
        return MaterialPageRoute(builder: (_) => const Center());
    }
  }
}
