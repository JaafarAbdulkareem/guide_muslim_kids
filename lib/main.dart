import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:guide_muslim_kids/core/manage/cubit/audio_cubit.dart';
import 'package:guide_muslim_kids/core/route/app_route.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/splash/logic/bloc/splash_bloc.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SplashBloc()),
        BlocProvider(create: (context) => AudioCubit()),
        BlocProvider(create: (context) => GameLevelCubit()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Guide Muslim Kids',
        locale: const Locale('ar'),
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppColor.scaffoldBackgroundColor,
          cardColor: AppColor.cardColor,
        ),
        initialRoute: RouteName.splash,
        onGenerateRoute: AppRoute.generate,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
      ),
    );
  }
}
