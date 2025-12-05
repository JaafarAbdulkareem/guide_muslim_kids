import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/core/utils/app_color.dart';
import 'package:guide_muslim_kids/core/utils/app_text_style.dart';
import 'package:guide_muslim_kids/core/utils/show_notification.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_group_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_choose_correct/item_choose_correct.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/drag_drop_word_entity/drag_drop_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_drag_drop_word/item_drag_drop_word.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_item_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/game_level_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/game_level_cubit.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/two_button_entity/question_two_button_entity.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_two_option/item_two_option.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class GameLevelRunner extends StatefulWidget {
  final GameLevelEntity level;
  const GameLevelRunner({super.key, required this.level});

  @override
  State<GameLevelRunner> createState() => _GameLevelRunnerState();
}

class _GameLevelRunnerState extends State<GameLevelRunner> {

  void _finishLevel() {
    context.read<GameLevelCubit>().completeLevel(widget.level.levelId);

    Navigator.pop(context);
    ShowNotification.showAnswerSnackBar(
      context,
      true,
      message: S.of(context).snackBarLevelCompleted,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentItem = widget.level.gameItems[0];
    const bool isLast = true;

    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.level.title,
          style: AppTextStyle.fontBold20(
            context,
          ).copyWith(color: AppColor.secondaryText),
        ),
        backgroundColor: AppColor.lettersText1,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _buildGameWidget(currentItem, isLast),
    );
  }

  Widget _buildGameWidget(GameItemEntity item, bool isLast) {
    switch (item.type) {
      case GameType.twoButtons:
        return Center(
          child: ItemTwoOption(
            data: item.data as QuestionTwoButtonEntity,
            onGameCompleted: _finishLevel,
            isLastItem: isLast,
          ),
        );
      case GameType.sorting:
        return ItemDragDropWord(
          levelData: item.data as DragDropEntity,
          onGameCompleted: _finishLevel,
          isLastItem: isLast,
        );
      case GameType.chooseCorrect:
        return ItemChooseCorrect(
          data: item.data as ChooseCorrectGroupEntity,
          onGameCompleted: _finishLevel,
          isLastItem: isLast,
        );
    }
  }
}
