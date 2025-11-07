import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/names/logic/entities/names_entity.dart';
import 'package:guide_muslim_kids/feature/names/ui/widget/names_item_detail.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class NamesDetailView extends StatelessWidget {
  const NamesDetailView({super.key, this.data});
  final NamesEntity? data;
  @override
  Widget build(BuildContext context) {
    final args = data ?? ModalRoute.of(context)?.settings.arguments;
    if (args is! NamesEntity) {
      return Scaffold(
        body: Center(child: Text(S.of(context).alertNoDataProvided)),
      );
    }

    return NamesItemDetail(data: args).safeArea();
  }
}
