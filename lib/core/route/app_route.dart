import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/widget/athkar_detail_view.dart';
import 'package:guide_muslim_kids/feature/daily/ui/daily_view.dart';
import 'package:guide_muslim_kids/feature/fast/ui/fast_view.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_view.dart';
import 'package:guide_muslim_kids/feature/names/logic/entities/names_entity.dart';
import 'package:guide_muslim_kids/feature/names/ui/names_detail_view.dart';
import 'package:guide_muslim_kids/feature/names/ui/names_view.dart';
import 'package:guide_muslim_kids/feature/prayer/ui/prayer_view.dart';
import 'package:guide_muslim_kids/feature/splash/ui/splash_view.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RouteName.daily:
        return MaterialPageRoute(builder: (_) => const DailyView());
      case RouteName.prayer:
        return MaterialPageRoute(builder: (_) => const PrayerView());
      case RouteName.fast:
        return MaterialPageRoute(builder: (_) => const FastView());
      case RouteName.dailyDetails:
        final args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) =>
              AthkarDetailView(data: args is AthkarEntity ? args : null),
        );

      case RouteName.names:
        return MaterialPageRoute(builder: (_) => const NamesView());
      case RouteName.namesDetails:
        final args = settings.arguments;
        return MaterialPageRoute(
          builder: (_) =>
              NamesDetailView(data: args is NamesEntity ? args : null),
        );
      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
