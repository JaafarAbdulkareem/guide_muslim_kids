import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/utils/widget_extension.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/feature/home/ui/widget/body_sub_home_view.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

class HomeSubView extends StatelessWidget {
  const HomeSubView({super.key, this.data});
  final SubHomeEntity? data;
  @override
  Widget build(BuildContext context) {
    final args = data ?? ModalRoute.of(context)?.settings.arguments;
    if (args is! SubHomeEntity) {
      return Scaffold(
        body: Center(child: Text(S.of(context).alertNoDataProvided)),
      );
    }
    return BodySubHomeView(data: data!).safeArea();
  }
}
