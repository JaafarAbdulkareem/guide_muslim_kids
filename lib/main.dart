import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/route/app_route.dart';
import 'package:guide_muslim_kids/core/utils/route/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guide Muslim Kids',
      locale: const Locale('ar'),
      theme: ThemeData(),
      initialRoute: RouteName.home,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
