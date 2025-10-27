import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'athkar_item.dart';

class AthkarList extends StatelessWidget {
  const AthkarList({super.key, required this.data});
  final List<AthkarEntity> data;
  @override
  Widget build(BuildContext context) {
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
