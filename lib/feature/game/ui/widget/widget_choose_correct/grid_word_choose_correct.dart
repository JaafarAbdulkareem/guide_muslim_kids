import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_muslim_kids/feature/game/logic/entities/choose_correct_entity/choose_correct_entity.dart';
import 'package:guide_muslim_kids/feature/game/logic/manage/choose_correct_cubit/choose_correct_cubit.dart';
import 'package:guide_muslim_kids/feature/game/ui/widget/widget_choose_correct/card_word_choose_correct.dart';

class GridWordChooseCorrect extends StatelessWidget {
  const GridWordChooseCorrect({super.key, required this.currentWords});

  final List<ChooseCorrectEntity> currentWords;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 columns
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5, // Shape of the card
      ),
      itemCount: currentWords.length,
      itemBuilder: (context, index) {
        return CardWordChooseCorrect(
          word: currentWords[index],
          onTap: () => context.read<ChooseCorrectCubit>().selectWord(index),
        );
      },
    );
  }
}
