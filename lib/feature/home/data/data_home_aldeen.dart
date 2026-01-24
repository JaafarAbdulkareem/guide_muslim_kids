import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<HomeEntity> getDataHomeAldeen(BuildContext context) {
  final s = S.of(context);
  return [
    const HomeEntity(
      image: AppImage.imagesAldeen,
      title: "",
      pageName: RouteName.aldeen,
    ),
    HomeEntity(
      image: AppImage.imagesNames,
      title: s.subHomeNames,
      pageName: RouteName.names,
    ),
  ];
}
