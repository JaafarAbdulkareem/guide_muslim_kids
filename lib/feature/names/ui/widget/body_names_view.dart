import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/widget/custom_app_bar.dart';
import 'package:guide_muslim_kids/feature/names/data/names.dart';
import 'package:guide_muslim_kids/feature/names/ui/widget/names_item.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class BodyNamesView extends StatelessWidget {
  const BodyNamesView({super.key});

  @override
  Widget build(BuildContext context) {
    final names = getDataNames(context);
    return Column(
      children: [
        const SizedBox(height: 8),
        AspectRatio(
          aspectRatio: 6,
          child: CustomAppBar(title: S.of(context).homeNames),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 2,
              childAspectRatio: 1.5,
            ),
            itemCount: names.length,
            itemBuilder: (context, index) {
              final data = names[index];
              return NamesItem(data: data);
            },
          ),
        ),
      ],
    );
  }
}
