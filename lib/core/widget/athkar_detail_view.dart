import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/entities/athkar_entity.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/core/widget/athkar_item_detail.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class AthkarDetailView extends StatelessWidget {
  final AthkarEntity? data;

  const AthkarDetailView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final args = data ?? ModalRoute.of(context)?.settings.arguments;
    if (args is! AthkarEntity) {
      return Scaffold(
        body: Center(child: Text(S.of(context).AlertNoDataProvided)),
      );
    }

    return AthkarItemDetail(data: args).safeArea();
  }
}
