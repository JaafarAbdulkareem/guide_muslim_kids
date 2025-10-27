import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/data/daily.dart';
import 'package:guide_muslim_kids/core/widget/item_athkar.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ItemAthkar(data: getDataDaily(context)[0]);
  }
}
