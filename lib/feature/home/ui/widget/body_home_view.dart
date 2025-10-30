import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/widget/custom_app_bar.dart';
import 'package:guide_muslim_kids/feature/home/data/home.dart';
import 'package:guide_muslim_kids/feature/home/ui/widget/home_item.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = getDataHome(context);
    return Column(
      children: [
        const SizedBox(height: 8),
        AspectRatio(
          aspectRatio: 6,
          child: CustomAppBar(title: S.of(context).titleHome),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.2,
            ),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return HomeItem(data: data[index]);
            },
          ),
        ),
      ],
    );
  }
}
