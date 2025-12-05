import 'package:flutter/material.dart';
import 'package:guide_muslim_kids/core/route/route_name.dart';
import 'package:guide_muslim_kids/core/utils/app_images.dart';
import 'package:guide_muslim_kids/feature/home/logic/home_entity.dart';
import 'package:guide_muslim_kids/generated/l10n.dart';

List<HomeEntity> getDataHomeAthkar(BuildContext context) {
  final s = S.of(context);
  return [
    HomeEntity(
      image: AppImage.imagesAthkarDaily,
      title: s.subHomeAthkar,
      pageName: RouteName.daily,
    ),
    HomeEntity(
      image: AppImage.imagesAdhan,
      title: s.subHomeSalah,
      pageName: RouteName.prayer,
    ),
    HomeEntity(
      image: AppImage.imagesSeeingCrescent,
      title: s.subHomeSawm,
      pageName: RouteName.fast,
    ),
  ];
}
