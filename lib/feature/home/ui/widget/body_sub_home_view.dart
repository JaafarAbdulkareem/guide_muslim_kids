import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/widget/custom_app_bar.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/feature/home/ui/widget/home_item.dart';

class BodySubHomeView extends StatelessWidget {
  const BodySubHomeView({super.key, required this.data});
  final SubHomeEntity data;
  @override
  Widget build(BuildContext context) {
    final dataSubHome = data.data;
    return Column(
      children: [
        const SizedBox(height: 8),
        AspectRatio(
          aspectRatio: 6,
          child: CustomAppBar(title: data.titleAppbar),
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
            itemCount: dataSubHome.length,
            itemBuilder: (context, index) {
              return HomeItem(data: dataSubHome[index]);
            },
          ),
        ),
      ],
    );
  }
}
