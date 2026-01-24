import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/route/app_route.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/widget/athkar_detail_view.dart';
import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/aldeen_detail_view.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/aldeen_view.dart';
import 'package:guide_muslim_kids/feature/about_us/ui/about_us_view.dart';
import 'package:guide_muslim_kids/feature/daily/ui/daily_view.dart';
import 'package:guide_muslim_kids/feature/fast/ui/fast_view.dart';
import 'package:guide_muslim_kids/feature/game/ui/game_view.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_sub_view.dart';
import 'package:guide_muslim_kids/feature/home/ui/home_view.dart';
import 'package:guide_muslim_kids/feature/names/logic/entities/names_entity.dart';
import 'package:guide_muslim_kids/feature/names/ui/names_detail_view.dart';
import 'package:guide_muslim_kids/feature/names/ui/names_view.dart';
import 'package:guide_muslim_kids/feature/prayer/ui/prayer_view.dart';
import 'package:guide_muslim_kids/feature/splash/ui/splash_view.dart';

void main() {
  group('AppRoute Generate Tests', () {
    test('RouteName.splash returns SplashView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.splash));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<SplashView>());
    });

    test('RouteName.aldeen returns AldeenView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.aldeen));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<AldeenView>());
    });

    test('RouteName.aldeenDetails returns AldeenDetailView with arguments', () {
      const args = AldeenEntity(title: 'Test', content: 'Content', audioKey: 'key', image: 'img');
      final route = AppRoute.generate(const RouteSettings(name: RouteName.aldeenDetails, arguments: args));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<AldeenDetailView>());
      expect((child as AldeenDetailView).data, equals(args));
    });

    test('RouteName.home returns HomeView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.home));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<HomeView>());
    });

    test('RouteName.subHome returns HomeSubView with arguments', () {
      const args = SubHomeEntity(titleAppbar: 'Title', data: []);
      final route = AppRoute.generate(const RouteSettings(name: RouteName.subHome, arguments: args));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<HomeSubView>());
      expect((child as HomeSubView).data, equals(args));
    });

    test('RouteName.daily returns DailyView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.daily));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<DailyView>());
    });

    test('RouteName.prayer returns PrayerView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.prayer));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<PrayerView>());
    });

    test('RouteName.fast returns FastView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.fast));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<FastView>());
    });

    test('RouteName.dailyDetails returns AthkarDetailView with arguments', () {
      const args = AthkarEntity(title: 'Title', content: 'Content', imageCharacter: 'img', audioKey: 'key');
      final route = AppRoute.generate(const RouteSettings(name: RouteName.dailyDetails, arguments: args));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<AthkarDetailView>());
      expect((child as AthkarDetailView).data, equals(args));
    });

    test('RouteName.names returns NamesView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.names));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<NamesView>());
    });

    test('RouteName.namesDetails returns NamesDetailView with arguments', () {
      const args = NamesEntity(title: 'Name', desc: 'Desc');
      final route = AppRoute.generate(const RouteSettings(name: RouteName.namesDetails, arguments: args));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<NamesDetailView>());
      expect((child as NamesDetailView).data, equals(args));
    });

    test('RouteName.game returns GameView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.game));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<GameView>());
    });

    test('RouteName.aboutUs returns AboutUsView', () {
      final route = AppRoute.generate(const RouteSettings(name: RouteName.aboutUs));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<AboutUsView>());
    });

    test('Default route returns SplashView', () {
      final route = AppRoute.generate(const RouteSettings(name: 'unknown_route'));
      expect(route, isA<MaterialPageRoute>());
      final materialPageRoute = route as MaterialPageRoute;
      final child = materialPageRoute.builder(NavigationContext());
      expect(child, isA<SplashView>());
    });
  });
}

class NavigationContext extends BuildContext {
  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
