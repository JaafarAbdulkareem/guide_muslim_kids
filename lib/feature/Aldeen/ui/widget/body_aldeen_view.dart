import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/feature/Aldeen/data/aldeen.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/widget/aldeen_item.dart';

class BodyAldeenView extends StatelessWidget {
  const BodyAldeenView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = getDataAldeen(context);
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: AldeenItem(data: data[index]),
        );
      },
    );
  }
}
