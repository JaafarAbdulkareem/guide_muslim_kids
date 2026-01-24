import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/body_game_view.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.gameBackground,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          S.of(context).titleGame,
          style: AppTextStyle.fontBold28(
            context,
          ).copyWith(color: AppColor.lettersText1),
        ),

        // actions: [
        //   Container(
        //     margin: const EdgeInsets.only(left: 10),
        //     decoration: const BoxDecoration(
        //       color: Colors.white,
        //       shape: BoxShape.circle,
        //     ),
        //     child: IconButton(
        //       icon: const Icon(
        //         Icons.refresh_rounded,
        //         color: Colors.orange,
        //         size: 30,
        //       ),
        //       onPressed: () => context.read<GameLevelCubit>().resetProgress(),
        //       tooltip: "إعادة اللعب",
        //     ),
        //   ),
        // ],
      ),
      body: const SafeArea(child: BodyGameView()),
    );
  }
}
