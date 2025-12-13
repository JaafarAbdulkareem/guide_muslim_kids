import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/responsive_layout.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_icon.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/item_game_level.dart';
import 'package:guide_muslim_kids/feature/level_first/data/data_game_first_level.dart';
import 'package:guide_muslim_kids/feature/level_first/ui/game_first_level_view.dart';
import 'package:guide_muslim_kids/feature/level_second/data/data_game_second_level.dart';
import 'package:guide_muslim_kids/feature/level_second/ui/game_second_level_view.dart';
import 'package:guide_muslim_kids/feature/level_third/data/data_game_third_level.dart';
import 'package:guide_muslim_kids/feature/level_third/ui/game_third_level_view.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class BodyGameView extends StatefulWidget {
  const BodyGameView({super.key});
  @override
  State<BodyGameView> createState() => _BodyGameViewState();
}

class _BodyGameViewState extends State<BodyGameView> {
  late List<GameLevelEntity> firstLevels;
  late List<GameLevelEntity> secondLevels;
  late List<GameLevelEntity> thirdLevels;
  late int firstSecondLength;
  @override
  void initState() {
    super.initState();
    firstLevels = [];
    secondLevels = [];
    thirdLevels = [];
    firstSecondLength = 0;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Initialize Data
    firstLevels = getDataGameFirstLevel(context);
    GameLevelCubit.firstLength = firstLevels.length;

    secondLevels = getDataGameSecondLevel(
      context,
      firstLength: firstLevels.length,
    );
    firstSecondLength = firstLevels.length + secondLevels.length;
    GameLevelCubit.firstSecondLength = firstSecondLength;

    thirdLevels = getDataGameThirdLevel(
      context,
      firstSecondLength: firstSecondLength,
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.03,
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: BlocBuilder<GameLevelCubit, int>(
          builder: (context, highestUnlockedId) {
            return ResponsiveLayout(
              mobileBody: _buildMobileLayout(s, highestUnlockedId),
              tabletBody: _buildTabletLayout(s, highestUnlockedId),
            );
          },
        ),
      ),
    );
  }

  Widget _buildMobileLayout(S s, int highestUnlockedId) {
    return Column(
      children: _buildLevelItems(s, highestUnlockedId)
          .map((e) => Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02),
                child: e,
              ))
          .toList(),
    );
  }

  Widget _buildTabletLayout(S s, int highestUnlockedId) {
    return Column(
      children: _buildLevelItems(s, highestUnlockedId)
          .map((e) => Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.02),
                child: e,
              ))
          .toList(),
    );
  }

  List<Widget> _buildLevelItems(S s, int highestUnlockedId) {
    return [
      // --- LEVEL 1: SUKOON ---
      ItemGameLevel(
        levelTitle: s.titleFirstLevel,
        levelSubtitle: s.contentFirstLevel,
        isUnlocked: true,
        color: AppColor.bgLevelItem1,
        shadowColor: AppColor.shadowLevelItem1,
        icon: AppIcon.firstLevel,
        targetScreen: GameFirstLevelView(levels: firstLevels),
      ),

      // --- LEVEL 2: MADD & TANWEEN ---
      ItemGameLevel(
        levelTitle: s.titleSecondLevel,
        levelSubtitle: s.contentSecondLevel,
        isUnlocked: highestUnlockedId > firstLevels.length,
        color: AppColor.bgLevelItem2,
        shadowColor: AppColor.shadowLevelItem2,
        icon: AppIcon.secondLevel,
        targetScreen: GameSecondLevelView(levels: secondLevels),
        previousLevelName: s.titleFirstLevel,
      ),

      // --- LEVEL 3: SHADDA ---
      ItemGameLevel(
        levelTitle: s.titleThirdLevel,
        levelSubtitle: s.contentThirdLevel,
        isUnlocked: highestUnlockedId > firstSecondLength,
        color: AppColor.bgLevelItem3,
        shadowColor: AppColor.shadowLevelItem3,
        icon: AppIcon.thirdLevel,
        targetScreen: GameThirdLevelView(levels: thirdLevels),
        previousLevelName: s.titleSecondLevel,
      ),
    ];
  }
}
