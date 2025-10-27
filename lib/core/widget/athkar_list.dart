import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/data/daily.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'athkar_item.dart';

class AthkarList extends StatelessWidget {
  const AthkarList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AthkarEntity> data = getDataDaily(context);

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: AthkarItem(data: data[index]),
        );
      },
    );
  }
}
