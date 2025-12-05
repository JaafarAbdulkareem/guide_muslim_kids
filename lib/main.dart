import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/game_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameLevelCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const GameView(),
      ),
    );
  }
}
