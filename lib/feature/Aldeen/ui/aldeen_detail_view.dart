import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/Aldeen/logic/aldeen_entity.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/widget/aldeen_detail_item.dart';
import 'package:guide_muslim_kids/feature/Aldeen/ui/widget/aldeen_ihsan_detail_item.dart';

import 'package:guide_muslim_kids/generated/l10n.dart';

class AldeenDetailView extends StatelessWidget {
  const AldeenDetailView({super.key, this.data});
  final AldeenEntity? data;
  @override
  Widget build(BuildContext context) {
    final args = data ?? ModalRoute.of(context)?.settings.arguments;
    if (args is! AldeenEntity) {
      return Scaffold(
        body: Center(child: Text(S.of(context).alertNoDataProvided)),
      );
    }

    return args.image != null
        ? AldeenDetailItem(data: args).safeArea()
        : AldeenIhsanDetailItem(data: args).safeArea();
  }
}
